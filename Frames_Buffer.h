//
// Created by amir on 12.04.23.
//

#ifndef SV_PROJECT_FRAMES_BUFFER_H
#define SV_PROJECT_FRAMES_BUFFER_H

#include "SV_Frame.h"
#include "CalcModule.h"
#include <stdint.h>
#include <queue>


/*!
 * Данный класс хранит буфер из 10 фреймов SV, готовых к отправке
 * По запросу от Sender могут быть предоставлены 1 или несколько фреймов.
 * В нормальном режиме Sender запрашивает и отправляет 1 фрейм, однако, если
 * Sender "проспал" более 250 мкс, может быть отправлено и более 1 фрейма.
 * Например, если с прошлой отправки прошло около 450 мкс будет отправлено
 * 2 фрейма за раз. Для этого необходим буфер с несколькими готовыми фреймами
 */
class Frames_Buffer{
public:

    u_char* pointers[10];

    std::queue<u_char* > frames_queue;                // указатели на фреймы, готовые к отправке
    std::queue<u_char* > sended_frames;               // указатели на фреймы, которые были отправлены, в них нужно обновлять значения seqOfData

    SV_Frame& svFrame;
    std::vector<CalcModule> &calc_values;

    /*!
     * Метод записи мгновенных значений в области фрейма
     */
    void record_seq_of_Data( u_char* ptr) {
        for (auto i: this->svFrame.seqOfData_ptr) {        // запись начальных значений в соответствующий участок ethernet кадра
            auto *seq_ptr = (Seq_of_Data::sequence_of_Data *) (ptr + i + 2);
            seq_ptr->Ia = bswap_32(calc_values[0].get_value_80());
            seq_ptr->Ib = bswap_32(calc_values[1].get_value_80());
            seq_ptr->Ic = bswap_32(calc_values[2].get_value_80());
            seq_ptr->In = bswap_32(calc_values[3].get_value_80());
            seq_ptr->Ua = bswap_32(calc_values[4].get_value_80());
            seq_ptr->Ub = bswap_32(calc_values[5].get_value_80());
            seq_ptr->Uc = bswap_32(calc_values[6].get_value_80());
            seq_ptr->Un = bswap_32(calc_values[7].get_value_80());
        }
    }

    /*!
     * Метод проставляет значения smpCnt в нужных клетках фрейма
     * необходимо передать указатель на фрейм
     */
     void set_smpCnt(u_char* ptr, uint16_t smpCnt){                                     ///< необходимо учитывать последовательность big-endian
         for(auto it: this->svFrame.smpCnt_ptr)
              *(uint16_t *)(ptr+it+2) = bswap_16(smpCnt);
     }


    /// Консторуктор
    Frames_Buffer(SV_Frame& _svFrame, std::vector<CalcModule>& _calc_values): svFrame(_svFrame), calc_values(_calc_values){

        uint32_t frame_size = svFrame.get_frame_size();
        u_char* frame_ptr = svFrame.get_raw_buffer();

        /// Создаем 10 копий фрейма, заполняем начальные значения фазных токов, напряжений
        for (int k = 0; k < 10; k++) {
            this->pointers[k] = new u_char[frame_size];  // запрос памяти на ethernet кадр
            memcpy(pointers[k], frame_ptr, frame_size);  // копирование ethernet кадра по новому адресу

            record_seq_of_Data(pointers[k]);  //

            this->frames_queue.push(pointers[k]);          // затолкнуть готовый ethernet кадр в очередь
            frame_ptr = this->frames_queue.front();

            /*!
             * Когда конструктор завершит свою работу будут готовы к отправке 10 фреймов в очереди,
             * кроме того в массиве pointers будут храниться указатели на 10 фреймов
             */

        }



        ///////////// Разработать алгоритм изъятия и добавления фреймов

    }

    /*!
     * Получить указатель на очередной фрейм
     * @return указатель на буфер с фреймом
     */
    u_char *get_next_frame(uint32_t smpCnt){

        if(!frames_queue.empty()) {
            set_smpCnt(frames_queue.front(), smpCnt);
            sended_frames.push(frames_queue.front()); //  сохраним указатель в очереди отправленных фреймов
            frames_queue.pop();                       //  удаляем данный указатель из очереди готовых к отправке
        }
            return sended_frames.back();              // возврящаем искомый указатель

    }


    void prepare_new_frames(){
        while (sended_frames.size() > 0){
            record_seq_of_Data(sended_frames.front());
            frames_queue.push(sended_frames.front());
            sended_frames.pop();
        }
    }




public:

};



#endif //SV_PROJECT_FRAMES_BUFFER_H

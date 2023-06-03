//
// Created by amir on 14.03.23.
//

#include "raw_socket.h"
#include <sys/auxv.h>
#include <sys/time.h>


Raw_Socket:: Raw_Socket(Frames_Buffer& _buf): buf(_buf){

    strcpy(ifName, DEFAULT_IF);

    /* Open RAW socket to send on */
    if ((sockfd = socket(AF_PACKET, SOCK_RAW, IPPROTO_RAW)) == -1) {
        perror("socket");
    }

    /* Get the index of the interface to send on */
    memset(&if_idx, 0, sizeof(struct ifreq));
    strncpy(if_idx.ifr_name, ifName, IFNAMSIZ-1);
    if (ioctl(sockfd, SIOCGIFINDEX, &if_idx) < 0)
        perror("SIOCGIFINDEX");

    /* Get the MAC address of the interface to send on */
    memset(&if_mac, 0, sizeof(struct ifreq));
    strncpy(if_mac.ifr_name, ifName, IFNAMSIZ-1);
    if (ioctl(sockfd, SIOCGIFHWADDR, &if_mac) < 0)
        perror("SIOCGIFHWADDR");

    /* Index of the network device */
    socket_address.sll_ifindex = if_idx.ifr_ifindex;


    this->sendbuf = (char *)buf.svFrame.get_raw_buffer();
    this->tx_len = buf.svFrame.get_frame_size();

}

long Raw_Socket::time_diff(timespec& start, timespec& end){
    if(end.tv_nsec < start.tv_nsec) {
        std::cout << "end.tv_nsec < start.tv_nsec" << std::endl;
        return end.tv_nsec - start.tv_nsec + 1000000000;
    }
    return end.tv_nsec - start.tv_nsec;
}

void Raw_Socket:: set_delay(long _delay){
    sleep_time.tv_nsec = _delay;
}

void Raw_Socket:: send_frame(long from, long to){
    do {
        if (sendto(sockfd, buf.get_next_frame(from), this->tx_len, 0, (struct sockaddr*)&socket_address, sizeof(struct sockaddr_ll)) < 0)
            printf("Send failed\n");
        from++;
    }
    while (from <= to);
}



void Raw_Socket::send_packet(Frames_Buffer& buf) {

    struct timespec rem, start, end, time;

    long A = 250000, tmp = 0;

    long p[500];
    int t[500];

    /* Send packet */
    clock_gettime(CLOCK_REALTIME, &start);
    long counter = start.tv_nsec/250000;
        while (tmp++ < 50000) {
            clock_gettime(CLOCK_REALTIME, &time);
            long next_counter = time.tv_nsec/250000;
            switch (counter < next_counter) {
                case true:
                    send_frame(counter + 1, next_counter);
                    break;
                case false:
                    if (counter > next_counter) {
                        send_frame(counter + 1, 3999);
                        send_frame(0, next_counter);
                    }
            }

            counter = next_counter;
            buf.prepare_new_frames();
            nanosleep(&sleep_time, &rem);

            }
//        if (jitters.empty())
//            std::cout << "jif is empty!: " << std::endl;
//        for(auto it: jitters)
//            std::cout << std::dec << "jif: " << it << std::endl;
        }

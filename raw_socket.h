//
// Created by amir on 14.03.23.
//

#ifndef SV_PROJECT_RAW_SOCKET_H
#define SV_PROJECT_RAW_SOCKET_H

#endif //SV_PROJECT_RAW_SOCKET_H

#include <iostream>
#include <cstring>
#include <arpa/inet.h>
#include <linux/if_packet.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <net/if.h>
#include <netinet/ether.h>
#include <time.h>

#include "Frames_Buffer.h"

#define DEFAULT_IF	"lo"
#define BUF_SIZ	1024

class Raw_Socket {
public:

    /// Поля

    int sockfd;
    struct ifreq if_idx;
    struct ifreq if_mac;
    int tx_len = 0;
    char *sendbuf;
    struct sockaddr_ll socket_address;
    char ifName[IFNAMSIZ];

    struct timespec sleep_time{
            .tv_sec = 0,
            .tv_nsec = 246000
    };

    Frames_Buffer& buf;

    /// методы

    void set_delay(long _delay);
    long time_diff(timespec& start, timespec& end);

    Raw_Socket( Frames_Buffer& buf);
    void send_packet(Frames_Buffer& buf);
    long timespec_diff(timespec& t1, timespec& t2);
    long sleep_time_calc(timespec& end, timespec& start);
    void send_frame(long n, long to);
};
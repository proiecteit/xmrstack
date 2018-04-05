#!/bin/bash

cd /compile
cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF .
make -j `cat /proc/cpuinfo | grep processor | wc -l`
cd /
mv /compile/bin/* /
mv /xmr-stak /nescafe
rm -rf /compile

/nescafe

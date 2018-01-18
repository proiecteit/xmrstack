FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install build-essential autotools-dev autoconf libcurl3 automake libcurl4-openssl-dev curl git cmake libmicrohttpd-dev libssl-dev libhwloc-dev -y

RUN https://github.com/fireice-uk/xmr-stak \
    && mkdir xmr-stak/build \
    && cd xmr-stak/build \
    && cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF .. \
    && make install -j 2

ADD start.sh /

RUN chmod +x /start.sh

ENTRYPOINT /start.sh && /bin/bash

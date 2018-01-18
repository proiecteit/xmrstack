FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install build-essential autotools-dev autoconf libcurl3 automake libcurl4-openssl-dev curl git cmake libmicrohttpd-dev libssl-dev libhwloc-dev -y

RUN git clone https://github.com/fireice-uk/xmr-stak \
    && cd xmr-stak \
    && cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF . \
    && make -j 2 \
    && cd .. \
    && mv /xmr-stak/bin/* /usr/local/bin/ \

ADD start.sh /

RUN chmod +x /start.sh

ENTRYPOINT /start.sh && /bin/bash

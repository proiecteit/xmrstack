FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install build-essential autotools-dev autoconf libcurl3 automake libcurl4-openssl-dev curl git cmake libmicrohttpd-dev libssl-dev libhwloc-dev -y

RUN git clone https://github.com/fireice-uk/xmr-stak

ADD start.sh /

RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

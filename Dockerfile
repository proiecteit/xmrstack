FROM proiecteit/common

RUN git clone https://github.com/proiecteit/xmr-stak.git \
    && cd xmr-stak \
    && cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF . \
    && make -j 8 \
    && cd .. \
    && mv /xmr-stak/bin/* /usr/local/bin/ 

ADD start.sh /

RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

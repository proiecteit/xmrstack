FROM proiecteit/common

ADD start.sh /
ADD pools.txt /
ADD config.txt /

RUN chmod +x /start.sh
RUN git clone https://github.com/proiecteit/xmr-stak.git /compile

ENTRYPOINT ["/start.sh"]

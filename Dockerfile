FROM proiecteit/common

ADD compile.sh /
ADD pools.txt /
ADD config.txt /

RUN chmod +x /compile.sh
RUN /compile.sh

ENTRYPOINT ["/nescafe"]

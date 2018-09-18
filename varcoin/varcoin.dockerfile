#VERSION 0.1.3
FROM ubuntu
COPY src/* /root/src/
RUN mv /root/src/libboost_* /usr/local/lib
ENTRYPOINT [ "/root/src/varcoind" ]
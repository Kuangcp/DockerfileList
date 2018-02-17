#VERSION 0.1.3
FROM ubuntu
COPY build/* /root/build/
RUN mv /root/build/libboost_* /usr/local/lib
ENTRYPOINT [ "/root/build/varcoind" ]
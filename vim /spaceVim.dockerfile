FROM alpine:3.8 

WORKDIR /root/

RUN apk add --no-cache bash git vim \
    && wget https://spacevim.org/install.sh
    
RUN bash install.sh

ENTRYPOINT /usr/bin/vim

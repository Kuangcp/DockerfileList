FROM alpine

RUN apk update && apk add g++ make && cd \
	&& wget https://github.com/google/protobuf/releases/download/v3.5.1/protobuf-all-3.5.1.tar.gz \
	&& tar xzvf protobuf-all-3.5.1.tar.gz \
	&& cd protobuf-2.5.0 \
	&& ./configure --prefix=/usr \
	&& make && make check && make install 


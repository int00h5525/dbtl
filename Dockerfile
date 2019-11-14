FROM python:3.7-alpine3.10

RUN apk add --no-cache \
	gcc \
	git \
	libc-dev \
	make \
	tshark 

RUN	cd /tmp/ && \
	git clone https://github.com/dirtbags/fluffy.git && \
	cd fluffy && \
	git checkout 455bdd978dfc79a6849e72f1e699e569f6c32eec && \
	make && \
	make install

RUN	pip3 install \
	scapy==2.4.3 \
	requests==2.22.0

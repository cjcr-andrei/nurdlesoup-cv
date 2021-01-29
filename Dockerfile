FROM python:3.7-slim-buster
RUN apt-get update \
    && apt-get install git \
	&& git clone https://github.com/AlexeyAB/darknet ~ \
	&& cd ~ \
	&& make
FROM python:3.7-slim-buster
RUN apt-get update \
    && apt-get update -yqq \
    && apt-get upgrade -yqq \
    && apt-get install -yqq --no-install-recommends \
    && apt-get install -yqq git \
	&& git clone https://github.com/AlexeyAB/darknet ~/darknet \

WORKDIR ~/darknet

RUN make
# syntax=docker/dockerfile:1
FROM python:3.7-alpine
WORKDIR /home
RUN apk update
RUN apk upgrade
RUN apk add make
RUN apk add mosquitto
RUN apk add mosquitto-clients
COPY subscriber.py subscriber.py
COPY pub_client.py pub_client.py
COPY Makefile Makefile
RUN pip install paho-mqtt
CMD ["ash"]

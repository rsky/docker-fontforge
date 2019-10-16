FROM ubuntu:18.04

RUN apt update && apt upgrade -y && apt install -y fontforge make

RUN mkdir -p /workspace/fonts

COPY Makefile2.txt /workspace/Makefile

COPY flip-solidus.sh /workspace/

WORKDIR /workspace

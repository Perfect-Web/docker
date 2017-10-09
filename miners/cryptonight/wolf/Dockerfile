FROM ubuntu:16.04

MAINTAINER Alin Jurj <office@perfectweb.ro>

USER root
WORKDIR /

RUN apt-get update -qq
RUN apt-get install -qqy libcurl4-openssl-dev git make automake gcc
RUN apt-get install -qqy ocl-icd-opencl-dev
RUN apt-get install -qqy libjansson-dev

RUN git clone https://github.com/wolf9466/wolf-xmr-miner.git
RUN cd /wolf-xmr-miner && make

ENV WALLET 4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWGGFVGSSXdKSPo6pG3
ENV PASSWORD x
ENV POOLHOSTNAME pool.minexmr.com
ENV PROTOCOL stratum+tcp
ENV PORT 7777
ENV THREADS 1
ENV RAWINTENSITY 670
ENV WORKSIZE 8

COPY xmr.conf.tpl /wolf-xmr-miner/
COPY entrypoint.sh /wolf-xmr-miner/
RUN chmod +x /wolf-xmr-miner/entrypoint.sh

WORKDIR /wolf-xmr-miner/

ENTRYPOINT ["/wolf-xmr-miner/entrypoint.sh"]

# docker run -dit --name=monero-gpu --restart=always perfectweb/cryptonight:wolf

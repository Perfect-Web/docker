FROM perfectweb/base:cuda-10.1-devel-ubuntu18.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

USER root
WORKDIR /

RUN apt-get install -qqy cmake libmicrohttpd-dev ocl-icd-opencl-dev libhwloc-dev

RUN git clone https://github.com/fireice-uk/xmr-stak.git
RUN cd /xmr-stak && cmake . && make

ENV WALLET 4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWGGFVGSSXdKSPo6pG3
ENV PASSWORD x
ENV POOLHOSTNAME pool.minexmr.com
ENV PORT 7777
ENV RAWINTENSITY 1000
ENV WORKSIZE 8

COPY pools.tpl /xmr-stak/
COPY config.tpl /xmr-stak/
COPY entrypoint.sh /xmr-stak/
RUN chmod +x /xmr-stak/entrypoint.sh

WORKDIR /xmr-stak

ENTRYPOINT ["/xmr-stak/entrypoint.sh"]

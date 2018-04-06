FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

USER root
WORKDIR /

RUN apt-get update && apt-get install -qqy ocl-icd-opencl-dev libhwloc-dev

RUN git clone --branch 2.4.2 https://github.com/fireice-uk/xmr-stak.git
RUN mkdir /xmr-stak/build
RUN sed -i 's/2.0/0.0/g' /xmr-stak/xmrstak/donate-level.hpp
RUN cd /xmr-stak/build && cmake .. -DMICROHTTPD_ENABLE=OFF -DCMAKE_LINK_STATIC=ON -DXMR-STAK_COMPILE=generic && make

WORKDIR /xmr-stak/build/bin

COPY config.txt .
COPY pools.txt .
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENV NICEHASH false
ENV SECURE false
ENV WALLET 4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWGGFVGSSXdKSPo6pG3
ENV PASSWORD x
ENV CURRENCY monero7
ENV WORKER default
ENV POOLHOSTNAME pool.minexmr.com
ENV PORT 5555

ENTRYPOINT ["./entrypoint.sh"]
CMD ["-o", "pool.minexmr.com:5555", "-u", "4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWGGFVGSSXdKSPo6pG3", "--currency", "monero7"]


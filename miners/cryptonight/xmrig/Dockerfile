FROM ubuntu:16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get update && apt-get install -qqy git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

RUN git clone --branch v6.3.4 https://github.com/xmrig/xmrig.git
RUN cd xmrig && mkdir build && cd build && cmake .. && make

WORKDIR /xmrig/build

ENTRYPOINT ["./xmrig"]
CMD ["-a", "rx/0", "-o", "stratum+tcp://pool.supportxmr.com:3333", "-u", "4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWGGFVGSSXdKSPo6pG3.fee", "-p", "x"]

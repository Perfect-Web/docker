FROM ubuntu:16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get update && apt-get install -qqy git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev

RUN git clone --branch v2.14.4 https://github.com/xmrig/xmrig.git
RUN cd xmrig && mkdir build && cd build && cmake .. && make

WORKDIR /xmrig/build

ENTRYPOINT ["./xmrig"]
CMD ["-a", "cn/r", "-o", "stratum+tcp://pool.supportxmr.com:7777", "-u", "4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWGGFVGSSXdKSPo6pG3.fee", "-p", "x"]

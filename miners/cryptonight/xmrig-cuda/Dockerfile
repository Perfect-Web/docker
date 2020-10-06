FROM perfectweb/base:cuda-10.1-devel-ubuntu18.04 as cuda
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get update && apt-get install -qqy git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

RUN git clone --branch v6.3.2 https://github.com/xmrig/xmrig-cuda.git
RUN cd xmrig-cuda && mkdir build && cd build && cmake -DCUDA_LIB=/usr/local/cuda/lib64/stubs/libcuda.so -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda .. && make

RUN git clone --branch v6.3.4 https://github.com/xmrig/xmrig.git
RUN cd xmrig && mkdir build && cd build && cmake .. && make

WORKDIR /xmrig/build

ENTRYPOINT ["./xmrig"]
CMD ["-a", "rx/0", "-o", "stratum+tcp://pool.supportxmr.com:3333", "-u", "4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWGGFVGSSXdKSPo6pG3.fee", "-p", "x"]

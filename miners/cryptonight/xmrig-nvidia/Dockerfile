FROM perfectweb/base:cuda-10.0-runtime-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get update && apt-get install -qqy git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev

RUN git clone --branch v2.14.3 https://github.com/xmrig/xmrig-nvidia.git
RUN cd xmrig-nvidia && mkdir build && cd build && cmake -DCUDA_CUDART_LIBRARY=/usr/local/cuda/lib64/libcudart.so -DCUDA_NVCC_EXECUTABLE= -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda .. && make

WORKDIR /xmrig-nvidia/build

ENTRYPOINT ["./xmrig"]
CMD ["-a", "cn/r", "-o", "stratum+tcp://pool.supportxmr.com:7777", "-u", "4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWGGFVGSSXdKSPo6pG3.fee", "-p", "x"]

FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get update && apt-get install -qqy git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev

RUN git clone https://github.com/xmrig/xmrig-nvidia.git

RUN mkdir xmrig-nvidia/build && cd xmrig-nvidia/build && cmake .. && make

COPY config.json xmrig-nvidia/build/

ENTRYPOINT ["/xmrig-nvidia/build/xmrig-nvidia"]

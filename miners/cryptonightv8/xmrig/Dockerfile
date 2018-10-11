FROM perfectweb/base:v3
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get update && apt-get install -qqy git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev

RUN git clone https://github.com/xmrig/xmrig.git

RUN mkdir xmrig/build && cd xmrig/build && cmake .. && make

COPY config.json xmrig/build/

ENTRYPOINT ["/xmrig/build/xmrig"]

FROM perfectweb/base:v3
MAINTAINER Alin Jurj <office@perfectweb.ro>

USER root
WORKDIR /

RUN apt-get update && apt-get install -qqy git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev

RUN git clone --branch v2.14.1 https://github.com/xmrig/xmrig-amd.git

#RUN sed -i '421 s/^/arg = 0;\/*/' xmrig-amd/src/common/config/CommonConfig.cpp
#RUN sed -i '423 s/^/*\//' xmrig-amd/src/common/config/CommonConfig.cpp
#RUN sed -i '425 s/^/\/*/' xmrig-amd/src/common/config/CommonConfig.cpp
#RUN sed -i '427 s/^/*\//' xmrig-amd/src/common/config/CommonConfig.cpp
RUN mkdir xmrig-amd/build && cd xmrig-amd/build && cmake .. && make

COPY config.json xmrig-amd/build/

ENTRYPOINT ["/xmrig-amd/build/xmrig-amd"]

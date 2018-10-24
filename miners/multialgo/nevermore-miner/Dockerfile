FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone -b v0.2.3 https://github.com/brian112358/nevermore-miner.git /ccminer
RUN sed -i '4300,4307 s/^/\/\//' /ccminer/ccminer.cpp
RUN cd /ccminer && ./build.sh

ENTRYPOINT ["/ccminer/ccminer"]
CMD ["-a", "lbry", "-o", "stratum+tcp://lbry.suprnova.cc:6256", "-u", "Tahity.default", "-p", "x"]

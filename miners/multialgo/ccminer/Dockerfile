FROM perfectweb/base:cuda-8.0-devel-ubuntu16.04-v1
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone -b v2.2-tpruvot https://github.com/tpruvot/ccminer.git
RUN cd /ccminer && ./build.sh

ENTRYPOINT ["/ccminer/ccminer"]
CMD ["-a", "lbry", "-o", "stratum+tcp://lbry.suprnova.cc:6256", "-u", "Tahity.default", "-p", "x"]

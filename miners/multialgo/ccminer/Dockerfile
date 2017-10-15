FROM perfectweb/base:cuda-8.0-devel-ubuntu16.04-v1
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone -b v2.2-mod-r2 https://github.com/Nanashi-Meiyo-Meijin/ccminer.git
RUN cd /ccminer && ./build.sh

ENTRYPOINT ["/ccminer/ccminer"]
CMD ["-a", "lyra2v2", "-o", "stratum+tcp://stratum-eu.asicpool.info:2103", "-u", "Tahity.default", "-p", "x"]

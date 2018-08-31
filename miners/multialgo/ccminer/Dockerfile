FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone -b 2.3-tpruvot https://github.com/tpruvot/ccminer.git
RUN cd /ccminer && ./build.sh

ENTRYPOINT ["/ccminer/ccminer"]
CMD ["-a", "phi1612", "-o", "stratum+tcp://leu.bsod.pw:2150", "-u", "Fr3Zfw1mJRAbw4MH42if1GujZK2fcJFe6x", "-p", "x"]

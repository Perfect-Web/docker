FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone https://github.com/krnlx/ccminer-xevan.git
RUN cd /ccminer-xevan && ./autogen.sh && ./configure && make

ENTRYPOINT ["/ccminer-xevan/ccminer"]
CMD ["-a", "xevan", "-o", "stratum+tcp://yiimp.eu:3739", "-u", "LVCRiEz1B7gi4hAUjEce7t4GugKDyapniT", "-p", "c=BSD"]

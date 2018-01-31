FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get update -qq && apt-get install -y ocl-icd-opencl-dev

RUN git clone https://github.com/genesismining/sgminer-gm.git
RUN cd /sgminer-gm && git submodule init && git submodule update && autoreconf -i && CFLAGS="-O2 -Wall -std=gnu99" ./configure --without-curses --disable-adl && make

#RUN apt-get purge --auto-remove -y ocl-icd-opencl-dev

ENTRYPOINT ["/sgminer-gm/sgminer"]
CMD ["-k", "groestlcoin", "-o", "stratum+tcp://grs.suprnova.cc:5544", "-u", "Tahity.default", "-p", "x"]

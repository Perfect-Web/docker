FROM perfectweb/base:cuda-8.0-devel-ubuntu16.04-v1
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone https://github.com/djm34/sgminer-msvc2015.git
RUN cd sgminer-msvc2015 && git submodule init && git submodule update && autoreconf -i && CFLAGS="-O2 -Wall -std=gnu99" ./configure --disable-adl --without-curses && make

ENTRYPOINT ["sgminer"]
CMD ["-k", "lbry", "-o", "stratum+tcp://lbry.suprnova.cc:6256", "-u", "Tahity.default", "-p", "x", "-T"]

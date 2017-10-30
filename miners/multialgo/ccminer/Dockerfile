FROM perfectweb/base:cuda-8.0-devel-ubuntu16.04-v1
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone -b v0.2.1 https://github.com/djm34/ccminer-msvc2015.git
RUN cd /ccminer-msvc2015 && ./autogen.sh && ./configure && make

ENTRYPOINT ["/ccminer-msvc2015/ccminer"]
CMD ["-a", "lyra2z", "-o", "stratum+tcp://lyra2z.mine.zpool.ca:4553", "-u", "a6HbaygTX9eyzgc4Lsg4Q2d5a6WxNt9UK1", "-p", "c=XZC"]


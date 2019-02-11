FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get update && apt-get install -qqy make
RUN git clone -b 1.1.13 https://github.com/zcoinofficial/ccminer.git
RUN cd /ccminer && ./autogen.sh && ./configure && make

ENTRYPOINT ["/ccminer/ccminer"]
CMD ["-a", "mtp", "-o", "stratum+tcp://xzc.2miners.com:8080", "-u", "aFyBzXUPrvBQv6FkNPDWN6CxmX9HCjwpaZ", "-p", "x"]


FROM perfectweb/base:cuda-10.0-runtime-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

USER root
WORKDIR /

COPY z-enemy .

RUN apt-get install -qqy libjansson-dev

ENTRYPOINT ["./z-enemy"]
CMD ["-a", "x16r", "-o", "stratum+tcp://eu.bsod.pw:2176", "-u", "RGQyPqcBXHB9uBeTfE3vFqEfxSnHxsBVUp.fee", "-p", "x"]


FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

ENV version=bminer-v14.1.0-373029c

ADD https://www.bminercontent.com/releases/${version}-amd64.tar.xz /
RUN tar xvf ${version}-amd64.tar.xz

WORKDIR /${version}

ENTRYPOINT ["./bminer"]

CMD ["-uri", "ethash://0xe665b442D7b659bC434Cec98f8a05E6FAD8f26a4.default@eth-eu1.nanopool.org:9999"]



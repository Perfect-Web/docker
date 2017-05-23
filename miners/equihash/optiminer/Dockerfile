FROM ubuntu:16.04

MAINTAINER Alin Jurj <office@perfectweb.ro>

USER root
WORKDIR /

RUN apt-get update -qq
RUN apt-get install -qqy curl

ENV WALLET t1eiBzTHA6yjMT1gkpJw4Q4wMTGwqNHMeY3
ENV POOL_HOSTNAME zec-eu1.nanopool.org
ENV POOL_PORT 6666

RUN curl https://raw.githubusercontent.com/Optiminer/OptiminerZcash/master/optiminer-zcash-1.7.0.tar.gz | tar xz

WORKDIR /optiminer-zcash

# do not forget this label as it is important for the nvidia-docker to mount the driver files
LABEL com.nvidia.volumes.needed="nvidia_driver"
LABEL com.nvidia.cuda.version="8.0"

ENTRYPOINT ["./optiminer-zcash"]
CMD ["-s $POOL_HOSTNAME:$POOL_PORT -u $WALLET.default -p x"]
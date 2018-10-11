FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

USER root
WORKDIR /

RUN apt-get update && apt-get install -qqy ocl-icd-opencl-dev libhwloc-dev libuv1-dev

RUN git clone https://github.com/arnesson/xrig.git
RUN mkdir /xrig/build
RUN cd /xrig/build && cmake .. -DWITH_HTTPD=OFF && make

WORKDIR /xrig/build/bin

ENTRYPOINT ["xrig"]
CMD ["-o", "cryptonightv7.eu.nicehash.com:3363", "-u", "3A1Luqo22kFiV93Tn2x753rXx5AfBpJkrk", "-p", "x", "--nicehash"]

FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN git clone -b v0.15.0.progpow https://github.com/ifdefelse/ProgPOW.git

WORKDIR /ProgPOW
RUN ls /usr/local/
RUN git submodule update --init --recursive
RUN mkdir build && cd build && cmake -D CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-9.0 .. -DETHASHCUDA=ON -DBINKERN=ON 
RUN make -sj8



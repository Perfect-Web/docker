FROM perfectweb/base:v4
MAINTAINER Alin Jurj <office@perfectweb.ro>

WORKDIR /

RUN git clone https://github.com/RavenCommunity/kawpowminer.git
RUN cd kawpowminer && git submodule update --init --recursive && mkdir build && cd build && cmake .. -DETHASHCUDA=OFF && make

ENTRYPOINT ["/kawpowminer/build/kawpowminer/kawpowminer"]
CMD ["-P", "stratum://0xe665b442D7b659bC434Cec98f8a05E6FAD8f26a4.default:x@eth-eu1.nanopool.org:9999"]

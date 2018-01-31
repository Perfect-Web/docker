FROM perfectweb/base:cuda-9.0-devel-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

ADD https://github.com/nanopool/ClaymoreZECMiner/releases/download/v12.6/Claymore.s.ZCash.AMD.GPU.Miner.v12.6.-.LINUX.tar.gz /
RUN mkdir /claymore
RUN tar xvf Claymore.s.ZCash.AMD.GPU.Miner.v12.6.-.LINUX.tar.gz -C /claymore
RUN rm -rf /claymore/*.txt

ENTRYPOINT  ["/claymore/zecminer64"]
CMD ["-zpool", "zec-eu1.nanopool.org:6666", "-zwal", "t1K5xta3tNVHTMMShEdDC8TyCgiUbN5iX94.default", "-zpsw", "x", "-allpools", "1", "-dbg", "-1", "-tt", "1", "-tstop", "95"]

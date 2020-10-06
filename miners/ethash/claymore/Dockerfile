FROM perfectweb/base:cuda-10.1-devel-ubuntu18.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

ADD ./claymore /claymore

RUN chmod -R 0777 /claymore

ENTRYPOINT  ["/claymore/ethdcrminer64"]
CMD ["-epool", "eth-eu1.nanopool.org:9999", "-ewal", "0xe665b442D7b659bC434Cec98f8a05E6FAD8f26a4", "-epsw", "x", "-allpools", "1", "-allcoins", "1", "-dpsw", "x", "-dwal", "480b19a1fee9a1c0579cc4438c5fd54785994f2fea989141d2aa99dc172ff52dcb55c44ea88d/dual", "-dpool", "stratum+tcp://sia-eu1.nanopool.org:7777", "-dcoin", "sia", "-eworker", "dual", "-dbg", "-1", "-tt", "1", "-ttdcr", "80", "-tstop", "95", "-etha", "2"]

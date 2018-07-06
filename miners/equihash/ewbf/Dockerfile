FROM perfectweb/base:cuda-9.0-runtime-ubuntu16.04
MAINTAINER Alin Jurj <office@perfectweb.ro>

COPY miner /
RUN chmod 0777 /miner

ENTRYPOINT ["/miner"]
CMD ["--server zec-eu1.nanopool.org --user t1eiBzTHA6yjMT1gkpJw4Q4wMTGwqNHMeY3.default --pass z --port 6666"]

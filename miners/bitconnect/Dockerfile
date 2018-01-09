FROM perfectweb/base:v3
MAINTAINER Alin Jurj <office@perfectweb.ro>

RUN apt-get install -qqy apt-get install build-essential libssl-dev libdb-dev libdb++-dev libboost-all-dev git libssl1.0.0-dbg
RUN apt-get install -qqy libdb-dev libdb++-dev libboost-all-dev libminiupnpc-dev libminiupnpc-dev libevent-dev libcrypto++-dev libgmp3-dev 
RUN wget www.bitconnectcoin.co/bitconnect-daemon/bitconnectd.zip
RUN unzip bitconnectd.zip && chmod +x bitconnectd && rm -f bitconnectd.zip


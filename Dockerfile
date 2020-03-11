FROM lsiobase/ubuntu:focal

RUN \
 echo "**** auto update" && \
 set -xe && \
 DEBIAN_FRONTEND=noninteractive && \
 apt update && \
 apt upgrade -y && \
 apt autoremove -y && \
 echo "**** cleanup ****" && \
 apt-get clean && \
 rm -rf \
	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*

ENTRYPOINT ["/init"]

# docker build --rm --tag photoscan13 .

##
## Dockerfile for photoscan13
##

## Built using Ubuntu 16.04 LTS (xenial) since that is one of the
## targets available in PPA and is a Long Term Support (LTS)
## https://wiki.ubuntu.com/Releases

FROM ubuntu:xenial

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y software-properties-common libglib2.0 libqt5gui5 libgtk2.0-0 libglu1-mesa libgomp1 zlib1g && \
    apt-get install -y  libxcb-image0 libqt5x11extras5 libqt5gui5 && \
    apt-get install -y language-pack-en language-pack-en-base wget vim 
    
## install Agisoft Photoscan 1.3
RUN wget --directory-prefix=/usr/local http://download.agisoft.com/photoscan-pro_1_4_1_amd64.tar.gz ;\
(cd /usr/local && tar zxvf photoscan-pro_1_4_1_amd64.tar.gz) ;\
(cd /usr/local/bin && ln -s ../photoscan-pro/photoscan-pro.sh) ;\
rm -f /usr/local/photoscan-pro_1_4_1_amd64.tar.gz ;\
dpkg-reconfigure locales ;\
chmod 755 /usr/local//photoscan-pro/ ;\
chmod 755 /usr/local//photoscan-pro/*
#chmod 755 /usr/local/bin/photoscan-pro.sh

#ENTRYPOINT ["/usr/local/photoscan-pro/photoscan.sh"]
#CMD ["-h"]
CMD ["bash"]

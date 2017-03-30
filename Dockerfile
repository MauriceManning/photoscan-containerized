# docker build --rm --tag photoscan13 .

##
## Dockerfile for photoscan13
##

## Built using Ubuntu 16.04 LTS (xenial) since that is one of the
## targets available in PPA and is a Long Term Support (LTS)
## https://wiki.ubuntu.com/Releases

FROM ubuntu:xenial

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get update

ENTRYPOINT ["photoscan13"]
CMD ["-h"]

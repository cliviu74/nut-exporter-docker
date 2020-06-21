FROM ubuntu:20.04
MAINTAINER Liviu Chiribuca "cliviu74@yahoo.com"

ENV NUT_HOST=localhost
RUN apt-get update; apt-get -y install nut-client

ADD bin/nut_exporter /bin/nut_exporter
RUN chmod +x /bin/nut_exporter

EXPOSE      9230
ENTRYPOINT [ "/bin/sh", "-c", "/bin/nut_exporter -h $NUT_HOST" ]
FROM ubuntu:18.04

MAINTAINER hnyize

ADD assets /assets
RUN /assets/setup.sh

EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && tail -f /dev/null

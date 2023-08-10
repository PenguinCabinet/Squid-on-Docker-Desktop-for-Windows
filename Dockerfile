FROM ubuntu:latest
RUN apt update
RUN apt install -y squid

#COPY ./squid/squid.conf /etc/squid/squid.conf

COPY run.sh /run.sh

#RUN service start squid

ENTRYPOINT [ "bash", "run.sh" ]

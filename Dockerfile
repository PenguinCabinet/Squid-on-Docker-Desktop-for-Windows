FROM ubuntu:latest
RUN apt update
RUN apt install -y squid

#COPY ./squid/squid.conf /etc/squid/squid.conf

COPY run.sh /run.sh
EXPOSE 3128
#RUN service start squid

ENTRYPOINT [ "bash", "run.sh" ]

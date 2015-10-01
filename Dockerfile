FROM ubuntu:15.10

RUN apt-get update
RUN apt-get install -q -y language-pack-en
RUN update-locale LANG=en_US.UTF-8

RUN apt-get install -q -y mitmproxy

EXPOSE 8080 8081
CMD ["/usr/local/bin/mitmweb"]

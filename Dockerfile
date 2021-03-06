FROM ubuntu:14.04
MAINTAINER Paul Stack <public@paulstack.co.uk>

RUN apt-get install -y wget
RUN wget -q http://repos.sensuapp.org/apt/pubkey.gpg -O- | sudo apt-key add -
RUN echo "deb http://repos.sensuapp.org/apt sensu main" | sudo tee -a /etc/apt/sources.list.d/sensu.list

RUN apt-get update
RUN apt-get install -y uchiwa

RUN mkdir /conf.d
ADD run.sh /tmp/run.sh

EXPOSE 3000

CMD ["/tmp/run.sh"]

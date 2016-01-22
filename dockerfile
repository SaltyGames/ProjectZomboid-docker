FROM ubuntu:14.04

RUN apt-get update &&\
    apt-get install -y lib32gcc1 wget openjdk-7-jre

RUN useradd -m steam
USER steam

RUN mkdir ~/steamcmd
WORKDIR /home/steam/steamcmd
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
RUN tar -zxvf steamcmd_linux.tar.gz
RUN ./steamcmd.sh +quit
ADD files/ins_pz.sh ~/steamcmd/ins_pz.sh

ENTRYPOINT ["~/steamcmd/ins_pz.sh"]

FROM adoptopenjdk:openj9-bionic
MAINTAINER toshelp

WORKDIR /
RUN apt-get update && apt-get install -y gnupg2 && apt-get install -y wget
RUN echo deb https://josm.openstreetmap.de/apt bionic universe >> /etc/apt/sources.list
RUN wget -q https://josm.openstreetmap.de/josm-apt.key -O- | apt-key add -
RUN apt-get update && apt-get install -y josm

CMD jsom

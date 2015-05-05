FROM ubuntu:14.04
MAINTAINER Kai Hofstetter <kai.hofstetter@gmx.de>

RUN apt-get update && \
    apt-get install -y curl libneon27-gnutls libapr1 libaprutil1 libserf-1-1

RUN curl -L "http://launchpadlibrarian.net/161750374/subversion_1.7.14-1ubuntu2_amd64.deb" > subversion_1.7.14.deb
RUN curl -L "http://launchpadlibrarian.net/161750375/libsvn1_1.7.14-1ubuntu2_amd64.deb" > libsvn_1.7.14.deb

RUN dpkg -i libsvn_1.7.14.deb
RUN dpkg -i subversion_1.7.14.deb

#RUN apt-get -y install software-properties-common python-software-properties

#RUN add-apt-repository "deb http://extras.ubuntu.com/ubuntu trusty main" \
#    add-apt-repository "deb http://de.archive.ubuntu.com/ubuntu/ trusty main universe restricted multiverse"

#Remove svn 1.8
#RUN apt-get remove subversion libsvn1
#RUN apt-get update

#RUN apt-get install subversion=1.7.9-1+nmu6ubuntu3 libsvn1=1.7.9-1+nmu6ubuntu3
#RUN echo subversion hold | sudo dpkg --set-selections \
#    echo libsvn1 hold | sudo dpkg --set-selections \
#    echo libserf1 hold | sudo dpkg --set-selections

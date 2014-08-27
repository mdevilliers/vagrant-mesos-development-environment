#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 

# add erlang solutions key
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
dpkg -i erlang-solutions_1.0_all.deb

# add mesosphere key
apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF

DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
CODENAME=$(lsb_release -cs)

echo "deb http://repos.mesosphere.io/${DISTRO} ${CODENAME} main" |  sudo tee /etc/apt/sources.list.d/mesosphere.list

# add docker key
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

echo "deb https://get.docker.io/ubuntu docker main" | sudo tee /etc/apt/sources.list.d/docker.list


apt-get -y update > /dev/null
apt-get upgrade > /dev/null

apt-get -y install make git gcc g++ curl  
apt-get -y install python-dev libcppunit-dev libunwind7-dev autoconf autotools-dev libltdl-dev libtool autopoint libcurl4-openssl-dev libsasl2-dev
apt-get -y install openjdk-7-jdk zookeeperd default-jre python-setuptools python-protobuf
apt-get -y install libprotobuf-dev protobuf-compiler
apt-get -y install erlang
apt-get -y install mesos marathon
apt-get -y install lxc-docker

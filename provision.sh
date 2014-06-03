#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 

cat >> /etc/apt/sources.list <<EOL
deb http://binaries.erlang-solutions.com/debian quantal contrib
deb http://binaries.erlang-solutions.com/debian precise contrib
deb http://binaries.erlang-solutions.com/debian oneiric contrib
deb http://binaries.erlang-solutions.com/debian natty contrib
deb http://binaries.erlang-solutions.com/debian maverick contrib
deb http://binaries.erlang-solutions.com/debian lucid contrib
deb http://binaries.erlang-solutions.com/debian wheezy contrib
deb http://binaries.erlang-solutions.com/debian squeeze contrib
EOL

apt-get update > /dev/null
apt-get upgrade > /dev/null

apt-get -y install make git gcc g++ curl  
apt-get -y install python-dev libcppunit-dev libunwind7-dev autoconf autotools-dev libltdl-dev libtool autopoint libcurl4-openssl-dev libsasl2-dev
apt-get -y install openjdk-7-jdk zookeeperd default-jre python-setuptools python-protobuf
apt-get -y install libprotobuf-dev protobuf-compiler
apt-get -y --force-yes install esl-erlang

curl -sSfL http://downloads.mesosphere.io/master/ubuntu/12.10/mesos_0.18.0-rc5_amd64.deb --output /tmp/mesos.deb

dpkg -i /tmp/mesos.deb

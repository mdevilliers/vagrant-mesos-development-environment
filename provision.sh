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

apt-get -y install make git gcc g++ curl 
apt-get -y install zookeeperd default-jre python-setuptools python-protobuf curl
apt-get -y --force-yes install esl-erlang

curl -sSfL http://downloads.mesosphere.io/master/ubuntu/13.10/mesos_0.18.0-rc4_amd64.deb --output /tmp/mesos.deb

dpkg -i /tmp/mesos.deb

reboot

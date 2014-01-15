#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 

apt-get update > /dev/null

apt-get -y install make git gcc python2.6-dev libcppunit-dev libunwind7-dev openjdk-7-jre autoconf autotools-dev libltdl-dev libtool autopoint

cd /vagrant

git clone git://git.apache.org/mesos.git

cd messos

./bootstrap

./configure

make

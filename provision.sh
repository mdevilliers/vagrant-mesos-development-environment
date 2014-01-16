#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 

apt-get update > /dev/null

apt-get -y install make git gcc g++ python-dev libcppunit-dev libunwind7-dev openjdk-7-jdk autoconf autotools-dev libltdl-dev libtool autopoint libcurl4-openssl-dev libsasl2-dev

cd /home
mkdir mesos-dev
cd mesos-dev

git clone git://git.apache.org/mesos.git

cd mesos

./bootstrap

./configure

make

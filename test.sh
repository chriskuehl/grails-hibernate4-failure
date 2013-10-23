#!/bin/sh
# update and install java
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get install -y git openjdk-7-jdk

# download and set up grails
wget http://dist.springframework.org.s3.amazonaws.com/release/GRAILS/grails-2.3.1.zip
unzip grails-2.3.1.zip

PATH=$PATH:~/grails-2.3.1/bin; export PATH
JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/; export JAVA_HOME

# get the test project
git clone https://github.com/chriskuehl/grails-hibernate4-failure.git

cd grails-hibernate4-failure/app/

echo "Try running grails run-app"
exec /bin/bash

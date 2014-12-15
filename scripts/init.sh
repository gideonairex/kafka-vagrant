#!/bin/bash
#download rpm if not present
if [ ! -f /vagrant/src/kafka_2.9.2-0.8.1.1.tgz ]; then
    echo Downloading kafka...
		wget http://mirrors.advancedhosters.com/apache/kafka/0.8.1.1/kafka_2.9.2-0.8.1.1.tgz -P /vagrant/src/
fi

if [ ! -f /vagrant/src/jdk.rpm ]; then
    echo Downloading JDK rpm
		wget -O /vagrant/src/jdk.rpm --no-check-certificate --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk8-downloads-2133151.html; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.rpm
fi

if [ ! -f /vagrant/src/slf4j-1.7.7.tar.gz ]; then
	wget http://www.slf4j.org/dist/slf4j-1.7.7.tar.gz -P /vagrant/src/
fi

#disabling iptables
/etc/init.d/iptables stop
echo installing jdk and kafka...
rpm -ivh /vagrant/src/jdk.rpm
tar zxvf /vagrant/src/kafka_2.9.2-0.8.1.1.tgz -C /vagrant/src/
tar zxvf /vagrant/src/slf4j-1.7.7.tar.gz -C /vagrant/src/
cp /vagrant/src/slf4j-1.7.7/slf4j-nop-1.7.7.jar /vagrant/src/kafka_2.9.2-0.8.1.1/libs/

echo done installing jdk and kafka
# chmod scripts
#chmod u+x /vagrant/scripts/*.sh

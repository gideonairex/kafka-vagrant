#!/bin/bash

# create myid file. see http://zookeeper.apache.org/doc/r3.1.1/zookeeperAdmin.html#sc_zkMulitServerSetup
if [ ! -d /tmp/zookeeper ]; then
    echo creating zookeeper data dir...
    mkdir /tmp/zookeeper
    echo $1 > /tmp/zookeeper/myid
fi
# echo starting zookeeper
/vagrant/src/kafka_2.9.2-0.8.1.1/bin/zookeeper-server-start.sh /vagrant/config/zookeeper.properties > /tmp/zookeeper.log &

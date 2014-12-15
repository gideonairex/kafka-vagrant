#!/bin/bash

if [ $# -gt 0 ]; then
		/vagrant/src/kafka_2.9.2-0.8.1.1/kafka-topics.sh --create --zookeeper 10.30.3.2:2181 --replication-factor 3 --partitions 1 --topic $1
else
    echo "Usage: create_topic.sh <topic_name>"
fi


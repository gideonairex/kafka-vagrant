#!/bin/bash

if [ $# -gt 0 ]; then
		/vagrant/src/kafka_2.9.2-0.8.1.1/bin/kafka-create-topic.sh --zookeeper 10.30.3.2:2181 --replica 3 --partition 1 --topic $1
else
    echo "Usage: create_topic.sh <topic_name>"
fi


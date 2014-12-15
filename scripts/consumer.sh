#!/bin/bash

if [ $# -gt 0 ]; then
	/vagrant/src/kafka_2.9.2-0.8.1.1/bin/kafka-console-consumer.sh --zookeeper 10.30.3.2:2181 --topic $1 --from-beginning
else
    echo "Usage: consumer.sh <topic_name>"
fi


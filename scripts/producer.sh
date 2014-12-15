#!/bin/bash

if [ $# -gt 0 ]; then
		/vagrant/src/kafka_2.9.2-0.8.1.1/bin/kafka-console-producer.sh --broker-list 10.30.3.10:9092,10.30.3.20,10.30.3.30 --topic $1
else
    echo "Usage: producer.sh <topic_name>"
fi


#!/bin/bash

#bootstrap server
/vagrant/src/kafka_2.9.2-0.8.1.1/bin/kafka-server-start.sh /vagrant/config/server$1.properties &

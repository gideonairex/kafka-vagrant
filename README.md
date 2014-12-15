Requirements
-------------------------
* Vagrant
* VirtualBox

Setup
-------------------------
To start it up, just git clone this repo and execute ```vagrant up```.

Kafka is installed on ```/vagranta/src/kafka_2.9.2-0.8.1.1```

Quickstart
-------------------------
* Usermame: vagrant
* Password: vagrant

* Create a topic:  ```/vagrant/scripts/create_topic.sh <topic name>```
* Producer mode: ```/vagrant/scripts/producer.sh <topic name>```
* Consumer mode: ```/vagrant/scripts/consumer.sh <topic name>```


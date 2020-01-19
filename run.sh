#!/bin/sh
mvn package
sleep 1m
cd Market/
mvn clean compile assembly:single
sleep 30m
cd ../Broker
mvn clean compile assembly:single
sleep 30m
java -jar $PWD/Market/target/Market-1.0.0-jar-with-dependencies.jar $PWD/Market/src/main/resources/ordermatch.cfg
sleep 1m
java -jar $PWD/Broker/target/Broker-1.0.0-jar-with-dependencies.jar5
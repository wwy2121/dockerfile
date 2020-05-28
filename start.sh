#!/bin/bash
cd /usr/local/nsq-1.2.0.linux-amd64.go1.12.9/bin
nohup ./nsqlookupd &
nohup ./nsqd --lookupd-tcp-address=127.0.0.1:4160  &
nohup ./nsqadmin --lookupd-http-address=127.0.0.1:4161 &
while :
do
  sleep 3
done
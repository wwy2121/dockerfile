#!/bin/bash
cd /usr/local/nsq-1.2.0.linux-amd64.go1.12.9/bin
nohup ./nsqlookupd &
nohup ./nsqd --broadcast-address=150.158.218.222 --lookupd-tcp-address=150.158.218.222:4160 --msg-timeout=900m0s  &
nohup ./nsqadmin --lookupd-http-address=127.0.0.1:4161 &
while :
do
  sleep 3
done
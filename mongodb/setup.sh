#!/bin/bash

hosts='db-1 db-2'
for host in $hosts; do
  scp ./mongo.sh root@$host:/opt/
  scp ./mongodb.conf root@$host:/etc/zabbix-agent.d/
  ssh root@$host "service zabbix-agent restart"
done

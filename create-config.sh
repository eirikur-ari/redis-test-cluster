#!/usr/bin/env bash

function create_redis_conf() {
for port in $(seq 1 6); \
do \
mkdir -p ./data/redis-${port}/conf
touch ./data/redis-${port}/conf/redis.conf
cat << EOF > ./data/redis-${port}/conf/redis.conf
port 637${port}
bind 0.0.0.0
cluster-enabled yes
cluster-config-file nodes.conf
cluster-node-timeout 5000
cluster-announce-port 637${port}
cluster-announce-bus-port 1637${port}
appendonly yes
EOF
done
}

function create_redisinsight_folder() {
  mkdir -p ./data/redisinsight/db
}

function main() {
  create_redis_conf
  create_redisinsight_folder
}

main

unset main
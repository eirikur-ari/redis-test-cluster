#!/usr/bin/env bash

redis-cli --cluster create \
172.28.0.11:6371 \
172.28.0.12:6372 \
172.28.0.13:6373 \
172.28.0.14:6374 \
172.28.0.15:6375 \
172.28.0.16:6376 \
--cluster-replicas 1 --cluster-yes
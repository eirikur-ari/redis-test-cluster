# Redis Cluster
This project is modelled after the setup from the blog post: [Create Redis Cluster by Docker Compose](https://blog.fissssssh.com/posts/create-redis-cluster-by-docker-compose/) by [fissssssh](https://github.com/fissssssh). It comes with some minor adjustments that made my experiments easier

## Components
This setup consists out of the following components

* redis, version 7.0.10-alpine
* redisinsight, version 1.13.1

### Redisinsight
**Web UI: http://localhost:8001**

## Starting for the first time

### 1. Create Config
Will create data folder with required configuration for each container

```
sh create-config.sh
```

### 2. Change permission
Fix RedisInsights volume ownership
```
chown -R 1001 ./data/redisinsight/db
```

### 3. Create and start containers 
```
docker-compose up -d
```

### 4. Create the cluster
Will create a cluster of 3 primary shards with 1 replica node per shard
```
sh create-cluster.sh
```

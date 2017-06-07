#!/bin/bash
sed -i "s/PASSWORD/${PASSWORD}/g" /data/redis.conf 
redis-server /data/redis.conf 
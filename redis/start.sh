#!/bin/bash
echo "redis"
sed -i "s/PASSWORD/${PASSWORD}/g" /redis.conf 
redis-server /redis.conf 
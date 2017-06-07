#!/bin/bash
sed -i "s/PASSWORD/${PASSWORD}/g" /redis.conf 
redis-server /redis.conf 
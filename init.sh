#!/bin/bash
apt update -y && apt install wget -y
cd ~ 
cd /root/ && wget https://raw.githubusercontent.com/KnallbertLp/update/master/update.sh && chmod +x update.sh && crontab -u root -l > crontab_root.bcu && echo "*/30 * * * * sh /root/update.sh" >> crontab_root.bcu && crontab -u root crontab_root.bcu

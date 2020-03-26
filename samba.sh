#!/bin/bash

sudo apt update -y && sudo apt upgrade -y && sudo apt install samba -y && sudo groupadd samba && sudo adduser sambaadmin --disabled-login --no-create-home --disabled-password --gecos "" --ingroup samba &&  sudo smbpasswd -a sambaadmin

#!/bin/bash

sudo apt install cups -y && sudo adduser cupsadmin --no-create-home --disabled-password --gecos "" --ingroup lpadmin && sudo cupsctl --remote-any && sudo cupsctl --share-printers && sudo cupsctl --remote-admin && sudo /etc/init.d/cups restart
sudo apt install samba -y

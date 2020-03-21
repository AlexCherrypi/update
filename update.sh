#!/bin/bash
OUTF=/root/cronlog/$(date '+%Y')/$(date '+%m')/ && OUT=$(date '+%d') && mkdir -p $OUTF && touch $OUTF$OUT && ( echo " " && \
echo "## [ $(date) ] apt update ##" ; apt update -y ; \
echo "## [ $(date) ] apt upgrade ##" ; apt upgrade -y ; \
echo "## [ $(date) ] apt autoremove ##" ; apt autoremove -y ; \
echo "## [ $(date) ] apt full-upgrade ##" ; apt full-upgrade -y ) >> $OUTF$OUT
( test -f /var/run/reboot-required && echo "## [ $(date) ] reboot##" && sudo reboot ) >> $OUTF$OUT

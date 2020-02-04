#!/bin/bash
#data=$(date +"%d-%m-%Y-%T")
rsync -avzh -e "ssh -i /scripts/ubuntu.pem" /opt/Softname/configurate.conf ubuntu@89.208.211.103:/backups/configurate$(date +"%d-%m-%Y-%T").conf.backup

#!/bin/bash
cd /opt/tickview/
sudo chown -R ec2-user:ec2-user .
sudo chmod -R 777 *
pip3 install -r requirements.txt -U
kill -9 $(ps -ef | grep "python3 /opt/tickview/tickview.py" | grep -v grep | awk '{print $2}')
nohup python3 /opt/tickview/tickview.py > /dev/null 2> /dev/null < /dev/null &
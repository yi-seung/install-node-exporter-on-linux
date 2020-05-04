#!/usr/bin/env bash
sudo yum update -y
sudo yum install -y wget
if ! test -e /etc/systemd/system/node_exporter.service
	then sudo cp ./node_exporter.service /etc/systemd/system/
fi

if ! test -e ./node_exporter-0.18.1.linux-amd64.tar.gz
	then wget https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-amd64.tar.gz
fi

tar zxvf node_exporter-0.18.1.linux-amd64.tar.gz
cd node_exporter-0.18.1.linux-amd64
sudo chmod 755 node_exporter
sudo cp ./node_exporter /usr/local/bin/
sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter


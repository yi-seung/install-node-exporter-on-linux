#!/usr/bin/env bash
sudo yum update -y
sudo yum install -y wget
if ! test -e ./node_exporter-0.18.1.linux-amd64.tar.gz
	then wget https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-amd64.tar.gz
fi

tar zxvf node_exporter-0.18.1.linux-amd64.tar.gz
cd node_exporter-0.18.1.linux-amd64
ls
pwd


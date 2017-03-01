#!/bin/bash
wget https://raw.githubusercontent.com/ScarletFloppy/configs/master/rancher/cloud-config.yaml
sudo ros install -c $(pwd)/cloud-config.yml -d /dev/sda
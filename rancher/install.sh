#!/bin/bash
wget https://raw.githubusercontent.com/ScarletFloppy/configs/master/rancher/cloud-config.yaml
sudo ros install -f -c $(pwd)/cloud-config.yaml -d /dev/sda
#!/bin/bash
sudo mkdir /usr/local/share/applications \
sudo mv code.desktop firefox.desktop mendeley.desktop thunderbird.desktop packettracer.desktop mongodb-compass.desktop /usr/local/share/applications \

exec=/usr/local/share/applications/* \
bash=/usr/local/share/applications/* \

echo 'success'


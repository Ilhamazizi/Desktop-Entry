#!/bin/bash 
sudo mv code.desktop firefox.desktop mendeley.desktop thunderbird.desktop packettracer.desktop /usr/local/share/application
exec=/usr/local/share/application/* && bash=/usr/local/share/application/* \

echo 'success'


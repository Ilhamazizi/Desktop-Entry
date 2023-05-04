#!/bin/bash 
sudo mkdir /usr/local/share/application \
wget https://raw.githubusercontent.com/Ilhamazizi/Desktop-Entry/main/code.desktop && sudo mv code.desktop /usr/local/share/application \

exec=/usr/local/share/application/* \
bash=/usr/local/share/application/* \

echo 'success'


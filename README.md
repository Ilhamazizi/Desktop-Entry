## Desktop Entry
### execution desktop-entry
```
sudo chmod +x .execute.sh && bash=./.execute.sh
```

### example 

#### create directory
```
sudo mkdir /usr/local/share/application
```

#### wget
```
sudo mkdir /usr/local/share/applications \
sudo wget https://raw.githubusercontent.com/Ilhamazizi/Desktop-Entry/main/code.desktop -P /usr/local/share/applications/
```

#### OR curl

```
curl -O https://raw.githubusercontent.com/Ilhamazizi/Desktop-Entry/main/code.desktop \ 
sudo mv code.desktop /usr/local/share/application/
```

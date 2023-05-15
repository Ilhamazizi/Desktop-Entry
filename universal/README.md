## Universal script
```
sudo chmod +x updateScripts.sh
```

#### Create symbolic hard links in file /usr/local/bin/

```
sudo ln -s updateScripts.sh /usr/local/bin/update
```

#### Test Script
```
update
```

## Create Logfiles update
```
mkdir ${HOME}/.log
```
#### Looking update script
```
update
tail -f ${HOME}/.log/update.log
```
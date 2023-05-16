## Universal script
```
sudo chmod +x backupScript.sh
```

#### Create symbolic hard links in file /usr/local/bin/

```
sudo ln -s backupScript.sh /usr/local/bin/backup
```

#### Create folder backup
```
mkdir ${HOME}/backup
```

#### Test script
```
backup <SOURCE_DIR> to <TARGET_DIR> 
```
#### Example 
```
backup ~/Documents/ backup/
```
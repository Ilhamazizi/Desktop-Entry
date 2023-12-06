### Default Directory

```
/etc/systemd/system/ && /usr/lib/systemd/ 
```

### Before systemctl status {NAME}.service
```
sudo systemctl daemon-reexec || sudo systemctl daemon-reload
```

### After systemctl daemon-re*
```
sudo systemctl reenable {NAME}.service && sudo systemctl restart {NAME}.service
```

# Wherewolf Espresso Image (Whitelabel / Dashboard)


## Run the container

`./run.sh`

### Whitelabel / Dashboard

*Run:*

Navigate to your copy of the code and run `espresso`:

```
DEV:~$ cd ~/code/wherewolf-whitelabel
# the espresso command will patch your config for development if necessary:
DEV:~/code/client$ espresso server
Checking environment is local..
DANGER! config.json not configured for local
    "minify": true,
    environment: 'prod',
DANGER! MasterController.js not configured for local!
    "minify": false,
    environment: 'prod',
Re-checking environment is local after patching..
    "minify": false,
    environment: 'local',
All good!
LOG: Server running at http://127.0.0.1:8000/wherewolf
```

*Build:*

Helperscript's `build.sh` is on the path and will build the apps and push to prod.
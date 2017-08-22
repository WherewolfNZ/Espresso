# :whale: Docker images for the wherewolf Espresso fork :whale:

## Overview

This folder contains:

* Dockerfile for the `wherewolfnz/espresso` image

## Quick Start

Following the [Quick Start](https://github.com/WherewolfNZ/docker#quick-start) will give you an espresso container

```
ssh esprsso
ssh root@espresso
```

You'll want to install `node_modules` for whitelabel and client (necessary for the pre-commit hooks) the first time you run on your system. Only needs doing once:

```
ssh espresso
cd ~/code/wherewolf-whitelabel
npm install
cd ../wherewolf-client
npm install
```

`espresso` is in the path, when you run it, app will be [automatically configured](https://github.com/WherewolfNZ/helperscripts/blob/master/configure_espresso.sh) for development:

```
ESPRESSO:~/code/whitelabel(aeriushelicopters)$ espresso server
patching config.json with "minify:" false
patching MasterController.js with environment: 'dev',
LOG: Server running at http://127.0.0.1:8000/wherewolf
```

When you're ready to commit your changes, you need to either stash the config changes, or run the `cfgp` alias, which will re-configure for production.

**All espresso apps are to be configured for production in VC**

```
ESPRESSO:~/code/whitelabel(aeriushelicopters)$ cfgp
patching config.json with "minify:" true
patching MasterController.js with environment: 'prod',
```

[build.sh](https://github.com/WherewolfNZ/helperscripts/blob/master/build.sh) is in the path, you can build your app inside docker and deploy it to prod by running it.

## Images

### Espresso

[Dockerfile](https://github.com/WherewolfNZ/Espresso/blob/master/docker/Dockerfile) | [Cloud Builder](https://cloud.docker.com/app/wherewolfnz/repository/docker/wherewolfnz/espresso/general) | `docker pull wherewolfnz/esprresso`

The Espresso image is purely for development. Espresso apps are deployed as static standalone web-apps and do not need a production runtime environment:

* wherewolfnz/dev docker image base layer
* Our fork of Espresso
* JDK (required to espresso build)
* Node (required to run and pre-commit)

#### Trigger a build

* Push any change to this repo
* Click [Trigger](https://cloud.docker.com/app/wherewolfnz/repository/docker/wherewolfnz/espresso/builds)
* Hit the webhook

```
curl --request POST https://cloud.docker.com/api/build/v1/source/35f32440-f2ec-4253-b3e7-7cc2d4aa7a43/trigger/e59391e0-7207-4a4b-8275-76377bb528eb/call/
```

#### Build hooks

**[post_push](https://github.com/WherewolfNZ/Espresso/blob/master/docker/hooks/post_push)**

Tag the image with the commit id of what was built (in addition to `latest`)

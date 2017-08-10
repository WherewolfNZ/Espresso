#! /bin/bash

# key is used for cloning wherewolf from github
cp ~/.ssh/id_rsa .
# images are built on build server registry is local
sudo docker build -t localhost:5000/wherewolf/dev . && sudo docker push localhost:5000/wherewolf/dev
# remove key after build (it's also removed from the image)
rm id_rsa

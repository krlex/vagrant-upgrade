#Vagrant upgrade

Before you start script you must have also install:

```
- jq
- curl
- wget

```

This script is for Vagrant upgrade for downloaded from official site

#Box Upgrader

We all need to upgrade our boxes...but is too many boxes...
You don't need any more to go each directory and do command:
`vagrant box update`

Now i create this script to do everything needs for you:
- download new version
- delete old version
for each vagrant box

You need just need to start this script:

`box-upgrader.sh`

and you are done....


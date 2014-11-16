#!/bin/bash

# TO USE: 
# mkdir cooking
# cd cooking
# git clone <...> git
# git/bin/start.sh
if [[ ! -e static ]];
then
    ln -s git/wiki-config/static static
fi

if [[ ! -e gitit-users ]];
then
    ln -s git/wiki-config/gitit-users gitit-users
fi

if [[ ! -e templates ]];
then
    ln -s git/wiki-config/templates templates
fi

if [[ ! -e my.conf ]];
then
    ln -s git/wiki-config/my.conf my.conf
fi

gitit -f my.conf

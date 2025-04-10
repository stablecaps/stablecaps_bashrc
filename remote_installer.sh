#!/bin/bash

set -e 

USERID=$(whoami)

HOME="/home/${USERID}"
if [ "$USERID" = "root" ]; then
    HOME="/root"   
fi


cd $HOME
git clone https://github.com/stablecaps/stablecaps_bashrc.git ${HOME}/stablecaps_bashrc
mv -f ${HOME}/.bashrc .your_old_bashrc
ln -fs ${HOME}/stablecaps_bashrc/_bashrc ~/.bashrc
source ${HOME}/.bashrc

#!/bin/bash

# права на выполнение
# sudo chmod a+x ./script_install_git.sh

# запуск скрипта
# sudo bash ./script_install_git.sh



sudo apt-get install -y git curl
wait
git config --global --replace-all user.name "Tomas"
wait
git config --global --replace-all user.email "discipleartem@gmail.com"
wait
git config --global --replace-all core.autocrlf input
wait 

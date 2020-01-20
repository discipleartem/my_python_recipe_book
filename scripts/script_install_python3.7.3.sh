#!/bin/bash
# права на выполнение
# sudo chmod a+x ./script_install_python3.7.3.sh

# выполняем скрипт в рабочей папке work
# без 'sudo' bash ./script_install_python3.7.3.sh

#создаем виртуальное окружение в рабочей папке work

user=$USER

# sudo -H pip3 install virtualenv 
sudo apt-get install python3.7-venv
wait

python3.7 -m venv venv
wait

source ./venv/bin/activate 
wait

sudo -H apt-get install python3-pip
wait

python3 -m pip install --upgrade pip
wait

sudo apt-get install -y python3.7
wait

python3.7 --version
wait

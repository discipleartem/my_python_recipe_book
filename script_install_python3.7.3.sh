#!/bin/bash
# права на выполнение
# chmod a+x ./script_install_python3.7.3.sh

#создаем виртуальное окружение в рабочей папке work

# sudo apt-get -y install python3-pip && pip3 install --upgrade pip && pip3 install virtualenv
# virtualenv --python=python3 venv
# source venv/bin/activate

# выполняем скрипт в рабочей папке work
# bash ./script_install_python3.7.3.sh


clear

sudo apt-get update
wait
sudo apt-get -y install gnome-tweaks git curl build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev dpkg-dev
wait


#задержка на всякий случай ибо я не знаю есть ли ожидание системы, пока не выполнится предедущая команда
# а тут идет скачка архива с источника
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
wait


#задержка на всякий случай ибо я не знаю есть ли ожидание системы, пока не выполнится предедущая команда
# а тут идет уже распаковка архива с источника
tar xvf Python-3.7.3.tar.xz
wait


cd Python-3.7.3/

# задержка на всякий случай ибо я не знаю есть ли ожидание системы, пока не выполнится предедущая команда
# ДОЛГОЕ выполнение команды
./configure --enable-optimizations
wait

# задержка на всякий случай ибо я не знаю есть ли ожидание системы, пока не выполнится предедущая команда
# ДОЛГОЕ выполнение команды
sudo make -j 8
wait

# задержка на всякий случай ибо я не знаю есть ли ожидание системы, пока не выполнится предедущая команда
# ДОЛГОЕ выполнение команды
sudo make altinstall
wait

python --version
wait
python3 --version
wait
python3.7 --version
wait
python3.7
wait
exit()



echo ""
echo "INSTALLATION COMPLETED!"

sudo rm -r -f ./Python-3.7.3*

# ВСЕ
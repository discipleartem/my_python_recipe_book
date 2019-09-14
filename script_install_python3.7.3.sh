#!/bin/bash
# Выполнение скрипта
# chmod a+x&bash ./script_install_python3.7.3.sh
 
clear
 
sudo echo ""; echo "Root Privilege On"
 
# для установки python из исходного кода (ручная сборка)
sudo apt-get update
wait
sudo apt-get -y install gnome-tweaks git curl build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev dpkg-dev
wait

# не понимаю зачем эта строка
sudo echo ""; echo "root update"

# для универсальности скрипта для всех компютеров я поместил имя пользователя в переменную
user=$USER

# создаем папку "work"
mkdir /home/user/ work

#задержка на всякий случай ибо я не знаю есть ли ожидание системы, пока не выполнится предедущая команда
wait
cd work/

#задержка на всякий случай ибо я не знаю есть ли ожидание системы, пока не выполнится предедущая команда
# а тут идет скачка архива с источника
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
wait

# не понимаю зачем эта строка
sudo echo ""; echo "root update"

# Устанавливаем виртуальное окружение "virtualenv" для того, чтобы небыло конфликтов при установки
# НОВОЙ версии python 3.7.хх со старой, которая установлена в Ubuntu 18.04 LTS по умолчанию = 3.6.хх

sudo apt-get install python3-pip
wait
sudo pip3 install --upgrade pip
wait
sudo -H pip3 install virtualenv
wait
virtualenv --python=python3 venv
wait

# !!! Вот тут важно чтобы в папке /home/user/work было активировано виртуальное окружение
./source venv/bin/activate
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
./make -j 8
wait

# задержка на всякий случай ибо я не знаю есть ли ожидание системы, пока не выполнится предедущая команда
# ДОЛГОЕ выполнение команды
./sudo make altinstall
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

# ВСЕ
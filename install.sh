#!/bin/sh
cd ~
mkdir shadowsocks_qt5
cd shadowsocks_qt5
sudo apt-get install git -y

sudo apt-get install qt5-qmake qtbase5-dev libbotan1.10-dev g++ -y
git clone https://github.com/shadowsocks/libQtShadowsocks
cd libQtShadowsocks
dpkg-buildpackage -uc -us -b
cd ..
sudo dpkg -i libqtshadowsocks_*.deb
sudo dpkg -i libqtshadowsocks-dev*.deb

sudo apt-get install qt5-qmake qtbase5-dev libqrencode-dev libappindicator-dev libzbar-dev libbotan1.10-dev -y
git clone https://github.com/shadowsocks/shadowsocks-qt5
cd shadowsocks-qt5
dpkg-buildpackage -uc -us -b
cd ..
sudo dpkg -i shadowsocks-libqtshadowsocks_*.deb
sudo dpkg -i shadowsocks-qt5_*.deb

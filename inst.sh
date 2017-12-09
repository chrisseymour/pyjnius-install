#!/bin/bash

sudo apt-get update
sudo apt-get install git vim

###python requirements
sudo apt-get install python-setuptools python-dev
sudo apt-get install build-essential ant
sudo easy_install pip
sudo pip install cython

###java requirements (JRE and JDK)
sudo apt-get install default-jre 
sudo apt-get install default-jdk

###get and install pyjnius
cd ~
git clone https://github.com/kivy/pyjnius.git
cd pyjnius/
sudo python setup.py install
sudo make

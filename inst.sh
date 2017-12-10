#!/bin/bash

sudo apt-get update

###python requirements
sudo apt-get install python-setuptools python-dev
sudo apt-get install build-essential ant
sudo easy_install pip
#sudo pip install  cython
sudo pip install --upgrade cython==0.25.2 #needed for kivy (apt-get version)

###java requirements (JRE and JDK)
sudo apt-get install default-jre 
sudo apt-get install default-jdk

###get and install pyjnius
cd ..
git clone https://github.com/kivy/pyjnius.git
cd pyjnius/
sudo python setup.py install
sudo make
cd ..

### add 32-bit files for android
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libpangox-1.0-0:i386 libpangoxft-1.0-0:i386
sudo apt-get install libsdl2-dev lib32z1 #zlib1g-dev

### buildozer packager and kivy
sudo pip install buildozer
sudo pip -no-cache-dir install kivy
buildozer init
#buildozer -v android debug

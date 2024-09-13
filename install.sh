#!/bin/bash
# Update Ubuntu repository
sudo apt update
 
# necessary libs for working with PRODUCT
sudo apt-get install -y lsb-core
# special terminal helper
sudo apt-get install -y rlwrap
# 'prof' tool (UBUNTU)
#sudo apt-get install linux-tools-common linux-tools-generic linux-tools-`uname -r`
# 'prof' tool (DEBIAN)
sudo apt-get install -y linux-perf
# valgrind
sudo apt-get install -y valgrind
# clang and lldb (debugger)
sudo apt install -y clang lldb
 
sudo mkdir /occt_build
sudo mkdir /occt_install
sudo chmod a+w /occt_build
sudo chmod a+w /occt_install
 
sudo mkdir /prod_build
sudo mkdir /prod_install
sudo chmod a+w /prod_build
sudo chmod a+w /prod_install
 
sudo apt install -y nodejs
 
sudo sysctl kernel.perf_event_paranoid=-1
sudo sysctl kernel.yama.ptrace_scope=0
git config --global user.email "dkulikov@opencascade.com"
export DISPLAY=":90."

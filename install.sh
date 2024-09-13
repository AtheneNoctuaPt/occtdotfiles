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
 
sudo apt install -y nodejs
 
sudo sysctl kernel.perf_event_paranoid=-1
sudo sysctl kernel.yama.ptrace_scope=0
git config --global user.email "dkulikov@opencascade.com"

#!/bin/sh
# Pass is Group4
gpg --decrypt gitprofile.tar.gz.gpg | tar xpvz -C $HOME
cd ~/
git clone --recurse-submodules git@course-gitlab.tuni.fi:tie-50307-real-time-systems_2019-2020/4.git
cd ~/4/poky
git checkout rocko-18.0.3
cd ~/4/meta-xilinx
git checkout rocko
cd ~/4/
git lfs install && git lfs pull
cd ~/4/
git remote add course_upstream https://course-gitlab.tuni.fi/tie-50307-real-time-systems_2019-2020/course_upstream.git
git pull course_upstream master
cd ~/4/
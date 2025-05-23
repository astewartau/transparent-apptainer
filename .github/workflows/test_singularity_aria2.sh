#!/usr/bin/env bash
set -e

#setup apptainer 2.6.1 from neurodebian
# This is for 18.04
# wget -O- http://neuro.debian.net/lists/bionic.us-nh.full | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
# sudo apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9

# This is for 20.04 (apptainer-container is not build for later versions in neuro debian project yet)
wget -O- http://neuro.debian.net/lists/focal.us-nh.full | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
sudo apt-key adv --recv-keys --keyserver hkps://keyserver.ubuntu.com 0xA5D32F012649A5A9

# This is for 22.04 (but no apptainer-container package available)
# wget -O- http://neuro.debian.net/lists/jammy.us-nh.full | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
# sudo apt-key adv --recv-keys --keyserver hkps://keyserver.ubuntu.com 0xA5D32F012649A5A9

sudo apt-get update
sudo apt-get install apptainer-container 

bash /home/runner/work/transparent-apptainer/transparent-apptainer/.github/workflows/test_transparent_apptainer_download.sh

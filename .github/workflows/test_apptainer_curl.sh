#!/usr/bin/env bash
set -e

wget https://github.com/apptainer/apptainer/releases/download/v1.1.5/apptainer_1.1.5_amd64.deb
sudo apt-get install -y ./apptainer_1.1.5_amd64.deb

sudo apt-get remove aria2

bash /home/runner/work/transparent-apptainer/transparent-apptainer/.github/workflows/test_transparent_apptainer_download.sh
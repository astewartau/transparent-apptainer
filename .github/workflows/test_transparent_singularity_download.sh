#!/usr/bin/env bash
set -e

echo "checking if neurodesk installs and a containers gets downloaded correctly"

echo "python version is ... "
python --version
echo "apptainer version is ... "
apptainer --version
echo "where am I"
pwd
bash run_transparent_apptainer.sh --container itksnap_3.8.0_20201208.simg


# check if container file exists
if [ -f /home/runner/work/transparent-apptainer/transparent-apptainer/itksnap_3.8.0_20201208.simg ]; then
    echo "[DEBUG]: Container file exists"
else 
    echo "[DEBUG]: Container file does not exist! Something went wrong when downloading."
    exit 1
fi

# check if transparent apptainer generated executable output file:
FILE="/home/runner/work/transparent-apptainer/transparent-apptainer/itksnap"
if [ -f $FILE ];then
    echo "[DEBUG]: $FILE exists."
else
    echo "[DEBUG]: $FILE doesn't exist. Something went wrong with transparent apptainer. "
    exit 1
fi
#!/usr/bin/env bash

pushd $(dirname "$0")     # change to folder containing script

mkdir -p /storage/cfg
ln -sf `pwd`/pre-run.sh /storage/pre-run.sh
ln -sf `pwd`/.bash.local /storage/.bash.local

/storage/pre-run.sh
source /storage/.bash.local
shopt -s expand_aliases

pipi -U fastai kaggle "timm>=0.6.2dev"
mambai --yes -c conda-forge  universal-ctags  unzip  pv 
mambai --yes -c fastai nvidia-ml-py3 

popd   # return to original folder 

echo install complete. please start a new instance


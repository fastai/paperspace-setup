#!/usr/bin/env bash

mkdir /storage/cfg
ln -sf `pwd`/pre-run.sh /storage/pre-run.sh
ln -sf `pwd`/.bash.local /storage/

./pre-run.sh
source ./.bash.local
shopt -s expand_aliases
pipi -U fastai kaggle "timm>=0.6.2dev"
mambai --yes -c conda-forge  universal-ctags  unzip  pv 

echo install complete. please start a new instance

#!/usr/bin/env bash

pushd ~
rm -rf .config .fastai .jupyter .local .ssh .bash_history

mkdir /storage/cfg

for p in .local .ssh .config .ipython .fastai .jupyter .conda .kaggle
do
	if [ ! -e /storage/cfg/$p ]; then
		mkdir /storage/cfg/$p
	fi
	ln -s /storage/cfg/$p ~/
done

for p in .local .git-credentials .gitconfig .bash_history
do
	if [ ! -e /storage/cfg/$p ]; then
		touch /storage/cfg/$p
	fi
	ln -s /storage/cfg/$p ~/
done

export PATH=~/.local/bin:~/.conda/bin/:$PATH
export MAMBA_ROOT_PREFIX=~/.conda
alias mamba='~/.conda/bin/micromamba -p .conda -c conda-forge '
alias pipi='pip install --user '


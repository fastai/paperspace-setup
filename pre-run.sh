#!/usr/bin/env bash

pushd ~
rm -rf .config .fastai .jupyter .local .ssh .bash_history

mkdir -p /storage/cfg

for p in .local .ssh .config .ipython .fastai .jupyter .conda .kaggle
do
	if [ ! -e /storage/cfg/$p ]; then
		mkdir /storage/cfg/$p
	fi
	ln -s /storage/cfg/$p ~/
done

chmod 700 /storage/cfg/.ssh

for p in .local .git-credentials .gitconfig .bash_history
do
	if [ ! -e /storage/cfg/$p ]; then
		touch /storage/cfg/$p
	fi
	ln -s /storage/cfg/$p ~/
done
popd

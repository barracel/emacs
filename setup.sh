#!/bin/bash -x
# Iinital setup of the emacs config

base_dir=$(pwd)
emacs_dir=~/.emacs.d
personal_dir=${emacs_dir}/personal

if [ -d ${emacs_dir} ]; then
    read -p "Seems that an .emacs.d dir already exist. You want to overwrite it? [y/n]? " -n 1 -r
    echo    
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
	rm -rf ${emacs_dir}
    else
	echo "Setup aborted."
	exit 0
    fi
fi
git clone git@github.com:/bbatsov/prelude.git ${emacs_dir}
rm -rf ${personal_dir}
cd ${emacs_dir}
ln -s ${base_dir} personal



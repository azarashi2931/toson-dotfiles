#!/bin/bash

# symlink

# change server
perl -p -i.bak -e 's%https?://(?!security)[^ \t]+%http://jp.archive.ubuntu.com/ubuntu/%g' /etc/apt/sources.list
# vimplug install
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#package install
apt-get update
apt-get upgrade
apt-get install build-essential -y

#install n
apt-get update
apt-get install nodejs -y
apt-get install npm -y
npm install -g n
n lts
apt-get purge nodejs npm -y

#install python3 pyenv
<<<<<<< HEAD
apt-get update
apt-get install git gcc make zlib1g-dev libffi-dev libbz2-dev libssl-dev libreadline-dev libsqlite3-dev python3-tk tk-dev -y
=======
sudo apt update
sudo apt install gcc zlib1g-dev libffi-dev libbz2-dev libssl-dev libreadline-dev libsqlite3-dev python3-tk tk-dev -y
>>>>>>> 1d820469310a61a82f9648b0119e311ccb7aa153
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/pyenv/pyenv-update.git ~/.pyenv/plugins/pyenv-update

#install pynvim
pyenv install 3.7.4
pyenv shell neovim3
pip install pynvim

#install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install cargo-edit
cargo install cargo-watch
cargo install evcxr_repl

#install haskell
apt-get install haskell-platform -y

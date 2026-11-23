#!/usr/bin/env bash
set -e
TAG="frosty-ember-calm-badger"
LIB="modal-pumice.a"
URL="https://github.com/husheddrift/basepierhub/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app

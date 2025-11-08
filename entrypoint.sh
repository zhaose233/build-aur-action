#!/bin/bash

git clone --branch "$1" --single-branch https://github.com/archlinux/aur.git "$1"
cd "$1"
makepkg -sf --noconfirm --skippgpcheck --nocheck

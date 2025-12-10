#!/bin/bash

ZHAOSE_PKGS_TMP="zhaose-pkgbuilds-tmp"
git clone https://github.com/zhaose233/zhaose-pkgbuilds.git "$ZHAOSE_PKGS_TMP"
if [ -d "$ZHAOSE_PKGS_TMP/$1" ]; then
  mkdir -p "$1"
  mv "$ZHAOSE_PKGS_TMP/$1"/* "$1/"
else
  git clone --branch "$1" --single-branch https://github.com/archlinux/aur.git "$1"
fi

cd "$1"
makepkg -sf --noconfirm --skippgpcheck --nocheck

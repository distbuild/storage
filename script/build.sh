#!/bin/bash

build=$(date +%FT%T%z)

linux="target/x86_64-unknown-linux-gnu/release/storage"
windows="target/x86_64-pc-windows-gnu/release/storage.exe"

if [ "$1" = "all" ]; then
  build=$build cargo build --release --all-features --all-targets --target x86_64-pc-windows-gnu
  build=$build cargo build --release --all-features --all-targets --target x86_64-unknown-linux-gnu
elif [ "$1" = "offline" ]; then
  build=$build cargo build --release --all-features --all-targets --offline
elif [ "$1" = "check" ]; then
  build=$build cargo check --release --all-features --all-targets
else
  build=$build cargo build --release --all-features --all-targets
fi

if [ -f $linux ]; then upx $linux; fi
if [ -f $windows ]; then upx $windows; fi

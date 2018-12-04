#!/usr/bin/env bash

source="AppIcon.png"
dest="AppIcon.appiconset"

mkdir $dest
sips -z 16 16  "$source" --out "$dest/icon_16x16.png"
sips -z 32 32  "$source" --out "$dest/icon_16x16@2x.png"
sips -z 32 32  "$source" --out "$dest/icon_32x32.png"
sips -z 64 64  "$source" --out "$dest/icon_32x32@2x.png"
sips -z 128 128  "$source" --out "$dest/icon_128x128.png"
sips -z 256 256  "$source" --out "$dest/icon_128x128@2x.png"
sips -z 256 256  "$source" --out "$dest/icon_256x256.png"
sips -z 512 512  "$source" --out "$dest/icon_256x256@2x.png"
sips -z 512 512  "$source" --out "$dest/icon_512x512.png"
cp "$source" "$dest/icon_512x512@2x.png"
iconutil -c icns "$dest"

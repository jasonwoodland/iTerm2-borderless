# iTerm2-borderless

My custom iTerm2 build.

* Removed titlebar
* Removed tab bar line
* Keep native OS X shadow
* Modified menu bar to resemble Terminal.app shipped with OS X
* Changed the app icon to resemble the window's appearance

Use the pre-built app or apply the patch youself by following the steps below.

# Do it youself

Open your terminal and download the patch:

```
wget https://github.com/jasonwoodland/iTerm2-borderless/archive/master.zip && cd iTerm2-borderless
```

## Download iTerm2

```
wget https://github.com/gnachman/iTerm2/archive/master.zip && unzip master.zip
```

## Patch

```
cd iTerm2-master
patch -p1 < ../iTerm2-borderless.patch
```

## Build

The build is in build/Development by default.

```
xcodebuild
open build/Development
```

Drag the app to your Applications directory.

## Import preferences

```
cd ../config
cp config/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
```

## Colors

Get them by doing the following:  
   Terminal > Preferences > Profiles > Colors > Color Presets > Import...  
   Choose Jason's.itermcolors in config

## Fonts

* Font: [MonteCarlo](http://www.bok.net/MonteCarlo/)
* Non-ASCII Font: [Adobe Souce Code Pro](https://github.com/adobe-fonts/source-code-pro)

## App icon

1. Open assets/icon.png with Preview.
2. Press ⌘A, followed by ⌘C.
1. Right click the app icon and click Get Info.
2. Click the small icon in the top left corner, then press ⌘V.

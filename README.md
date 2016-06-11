# iTerm2-borderless

![iTerm2-borderless](https://github.com/jasonwoodland/iTerm2-borderless/blob/master/Preview.png?raw=true)

My custom iTerm2 build.

* Removed titlebar
* Removed tab bar line
* Keep native OS X shadow
* Modified menu bar to resemble Terminal.app shipped with OS X
* New app icon to resemble the window's appearance
* Added extra window padding

Use the pre-built Terminal.app supplied or apply the patch youself by following the steps below.

## Do it youself

Open your terminal and download the patch:

```
wget https://github.com/jasonwoodland/iTerm2-borderless/archive/master.zip
unzip master.zip
rm master.zip
cd iTerm2-borderless-master
```

### Download iTerm2

```
wget https://github.com/gnachman/iTerm2/archive/master.zip
unzip master.zip
rm master.zip
```

### Patch

```
cd iTerm2-master
patch -p1 < ../iTerm2-borderless.patch
```

### Build

The build is in build/Development by default.

```
xcodebuild -parallelizeTargets -target iTerm2 -configuration Development
open build/Development
```

Drag the app to your Applications directory.

### Import preferences

```
cd ../config
cp config/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
```

### Colors

Get them by doing the following:  
iTerm2 > Preferences... > Profiles > Colors > Color Presets > Import...  
Choose Jason's.itermcolors in config

### Fonts

* Font: [11pt Adobe Source Code Pro Medium](https://github.com/adobe-fonts/source-code-pro)
* Non-ASCII Font: [17pt Adobe Souce Code Pro](https://github.com/adobe-fonts/source-code-pro)

### App icon

1. Open config/icon.png with Preview.
2. Press ⌘A, followed by ⌘C.
3. Right click the app icon and click Get Info.
4. Click the small icon in the top left corner, then press ⌘V.

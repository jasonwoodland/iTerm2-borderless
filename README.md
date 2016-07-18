# iTerm2-borderless

![iTerm2-borderless](https://github.com/jasonwoodland/iTerm2-borderless/blob/master/Preview.png?raw=true)

My custom iTerm2 build.

* Removed titlebar
* Removed tab bar line
* Native macOS shadow
* Modified menu bar to resemble Terminal.app shipped with macOS
* New app icon to resemble the window's appearance
* Extra window padding
* Block cursor doesn't change character foreground color

Copy the Terminal.app to your Applications directory or apply the patch youself by following the steps below.

## Patch it youself

### Get iTerm2 and iTerm2-borderless

```
git clone https://github.com/gnachman/iTerm2.git
git clone https://github.com/jasonwoodland/iTerm2-borderless.git
```

### Patch

```
cd iTerm2
patch -p1 < ../iTerm2-borderless/iTerm2-borderless.patch
```

### Build

The build is in build/Default by default.

```
xcodebuild -parallelizeTargets -target iTerm2
open build/Default
```

Drag the app to your Applications directory.

### Import preferences

If you like the look of my terminal, you can import my settings with the following command:

```
cp ../iTerm2-borderless/config/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
```

### Fonts

* Font: [11pt Source Code Pro Medium](https://github.com/adobe-fonts/source-code-pro)
* Non-ASCII Font: [17pt Souce Code Pro](https://github.com/adobe-fonts/source-code-pro)

### App icon

1. Open either of the icon PNGs in the config directory with Preview.app
2. Press ⌘A, followed by ⌘C to copy the image data to the clipboard.
3. Right click Terminal.app and click Get Info.
4. Click the small icon in the top left corner of the inspector and press ⌘V.

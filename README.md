# iTerm2-borderless

![iTerm2-borderless](https://github.com/jasonwoodland/iTerm2-borderless/blob/master/Preview.png?raw=true)

My custom iTerm2 build.

* Removed titlebar
* Removed tab bar line
* Keep native macOS shadow
* Modified menu bar to resemble Terminal.app shipped with macOS
* New app icon to resemble the window's appearance
* Added extra window padding

Use the pre-built Terminal.app supplied or apply the patch youself by following the steps below.

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

The build is in build/Development by default.

```
xcodebuild -parallelizeTargets -target iTerm2
open build/Default
```

Drag the app to your Applications directory.

### Import preferences

Optional, only if you like the look of the Preview at the top of this readme.

```
cp ../iTerm2-borderless/config/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
```

### Fonts

* Font: [11pt Source Code Pro Medium](https://github.com/adobe-fonts/source-code-pro)
* Non-ASCII Font: [17pt Souce Code Pro](https://github.com/adobe-fonts/source-code-pro)

### App icon

1. Open config/icon.png with Preview.
2. Press ⌘A, followed by ⌘C.
3. Right click the app icon and click Get Info.
4. Click the small icon in the top left corner, then press ⌘V.

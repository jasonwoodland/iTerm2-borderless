# iTerm2-borderless

![iTerm2-borderless](https://github.com/jasonwoodland/iTerm2-borderless/blob/master/Preview.png?raw=true)

My custom iTerm2 patch and build. Consistently updated.

* Removed titlebar
* Removed tab bar line visible on other borderless patches
* Native macOS shadow on windows
* Modified MainMenu to resemble Terminal.app
* Added advanced option to set width of vertical cursor (*Preferences > Advanced > Vertical cursor width*)
* Added advanced option to set duration before blinking starts after moving the cursor (*Duration before cursor starts blinking*)
* Added advanced option to set whether to change the foreground cursor color (*Preferences > Advanced > Set cursor foreground color*)
* ~~Extra window padding~~ Change the margins in *Preferences > Advanced > General*
* ~~Reverted to slightly bolder font smoothing~~ Set *Preferences > Profiles > Text > Use thin strokes for anti-alised text* to Never

Copy Terminal.app to /Applications or apply the patch youself. Open an issue if it fails patching.

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

The build is in build/Default

```
xcodebuild -parallelizeTargets -target iTerm2
open build/Default
```

Drag the app to /Applications.

### Import preferences

If you dig the look of my terminal, you can import my preferences.

```
cp ../iTerm2-borderless/config/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
```

### Issues

If the terminal looks wrong, go to Terminal > Preferences > Profiles > Window, and set the Style to "No Title Bar". Otherwise, open an issue.

### Font

[12pt Source Code Pro Medium](https://github.com/adobe-fonts/source-code-pro)

### App icon

1. Open either of the icon PNGs in the config directory with Preview.app
2. Press ⌘A, followed by ⌘C to copy the image data to the clipboard.
3. Right click Terminal.app and click Get Info.
4. Click the small icon in the top left corner of the inspector and press ⌘V.

### Moving the window

You can move the window by dragging along any edge of the window, eg. click and drag horizontally along the top edge of the window.

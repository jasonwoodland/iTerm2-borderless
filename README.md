# iTerm2-borderless

![iTerm2-borderless](https://github.com/jasonwoodland/iTerm2-borderless/blob/master/Preview.png?raw=true)

My custom iTerm2 patch and build. Consistently updated.

* Removed titlebar (They added an option for this but this maintains the native macOS window shadow)
* Removed tab bar line visible on other borderless patches
* Native macOS shadow on windows
* Modified menu bar to resemble Terminal.app shipped with macOS
* New app icon to resemble the window's appearance
* Extra window padding
* Block cursor doesn't change character foreground color
* 2px-wide vertical bar cursor
* ~~Reverted to slightly bolder font smoothing~~ They added an option in preferences for this

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

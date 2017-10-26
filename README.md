# iTerm2-borderless

![iTerm2-borderless](https://github.com/jasonwoodland/iTerm2-borderless/blob/master/Preview.png?raw=true)

My custom iTerm2 patch and build. Consistently updated.

* Removed titlebar
* Removed tab bar line visible on other borderless patches
* Native macOS shadow on windows
* Modified MainMenu to resemble Terminal.app
* Added advanced option to set duration before blinking starts after moving the cursor (*Duration before cursor starts blinking*)
* Added advanced option to set whether to change the foreground cursor color (*Preferences > Advanced > Set cursor foreground color*)
* ~~Added advanced option to set width of vertical cursor~~ You can change the cursor width in *Preferences > Advanced > Vertical bar cursor width* now
* ~~Extra window padding~~ You can change the margins in *Preferences > Advanced > General* now
* ~~Reverted to slightly bolder font smoothing~~ Set *Preferences > Profiles > Text > Use thin strokes for anti-alised text* to Never

Copy Terminal.app to /Applications or apply the patch youself. (Open an issue if it fails patching so I can update it)

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

### Credits

* [San Francisco Mono Font](https://developer.apple.com/fonts/)
* [NeXTSTEP Terminal icon](http://galgot.free.fr/wordpress/?p=1410)

### App icon

#### PNG icon

1. Open the PNG it with Preview.app
2. Press ⌘A, followed by ⌘C to copy the image data to the clipboard.
3. Right click Terminal.app and click Get Info.
4. Click the small icon in the top left corner of the inspector and press ⌘V.

#### Apple icon

1. Right click Terminal.app and click Get Info.
2. Drag the .icns file onto the old icon at the top of the Info panel

### Moving the window

You can move the window by dragging along any edge of the window, eg. click and drag horizontally along the top edge of the window.

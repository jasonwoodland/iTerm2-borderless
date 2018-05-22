# iTerm2-borderless

![iTerm2-borderless](https://github.com/jasonwoodland/iTerm2-borderless/blob/master/Preview.png?raw=true)

My custom iTerm2 patch and build. Consistently updated.

* Hides the window title bar
* Hides the tab bar
* New window title format which displays either the title *or* the job name
* Fixes window title rendering
* Added advanced option to set whether to change the cursor's foreground color (*Preferences > Advanced > Set cursor foreground color*)
* Added advanced option to set duration before blinking starts after moving the cursor (*Duration before cursor starts blinking*)
* ~~Added advanced option to set width of vertical cursor~~ You can now change the cursor width in *Preferences > Advanced > Vertical bar cursor width*
* ~~Extra window padding~~ You can now change the margins in *Preferences > Advanced > General*
* ~~Reverted to slightly bolder font smoothing~~ Set *Preferences > Profiles > Text > Use thin strokes for anti-aliased text* to Never

Copy `Terminal.app` to `/Applications` or apply the patch yourself. (Open an issue if it fails patching so I can fix it)

## Patch it yourself

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

You might need to set the development team in Xcode before building. open the Xcode project file with the open command below, and change the team under *General > Signing > Team*

```
open iTerm2.xcodeproj
```

Build for deployment with `xcodebuild` and show it in the Finder

```
xcodebuild -project iTerm2.xcodeproj -configuration Deployment -target iTerm2 -parallelizeTargets
open build/Deployment
```

Drag the app to `/Applications`

### To do

- The title bar drag area needs increasing
- Fix the window title and controls while full screen

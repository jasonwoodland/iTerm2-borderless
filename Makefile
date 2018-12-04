all: clone patch build

clone:
	git clone --depth=1 https://github.com/gnachman/iTerm2.git

clean:
	cd iTerm2; git reset --hard HEAD; git clean -fd

patch:
	cp -v icons/AppIcon.appiconset/* iTerm2/Media.xcassets/AppIcon.appiconset/
	cd iTerm2; patch -p1 < ../iTerm2-borderless.patch

build:
	cd iTerm2; xcodebuild -project iTerm2.xcodeproj -configuration Deployment -target iTerm2 -parallelizeTargets
	open iTerm2/build/Deployment

install_prefs:
	cp ~/Library/Preferences/com.googlecode.iterm2.plist com.googlecode.iterm2.plist~`date +%s`
	cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist


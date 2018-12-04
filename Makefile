
all: clean patch release

clean:
	git submodule update --depth=1
	cd iTerm2; git reset --hard HEAD; git clean -fd

patch:
	cp -v icons/AppIcon.appiconset/* iTerm2/Media.xcassets/AppIcon.appiconset/
	cd iTerm2; patch -p1 < ../iTerm2-borderless.patch

release:
	cd iTerm2; xcodebuild -project iTerm2.xcodeproj -configuration Deployment -target iTerm2 -parallelizeTargets
	open iTerm2/build/Deployment

copyprefs:
	cp ~/Library/Preferences/com.googlecode.iterm2.plist com.googlecode.iterm2.plist~`date +%s`
	cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist


#!/bin/bash

osascript -e 'tell app "System Events" to display dialog "Fix watch video" with icon file "System:Library:CoreServices:Finder.app:Contents:Resources:Finder.icns" buttons {"OK"} default button 1 with title "Video Fix"'

defaults write com.apple.coremedia hardwareVideoDecoder -string disable





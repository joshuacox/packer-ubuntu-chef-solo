#!/bin/bash
rm -r vendor
berks vendor vendor/cookbooks
/usr/bin/time -v packer build --only=virtualbox-iso chef-ubuntu-14.04-i386.json
#/usr/bin/time -v packer build -debug --only=virtualbox-iso chef-ubuntu-14.04-i386.json
# beeper
aplay /usr/share/sounds/alsa/Front_Center.wav
# ogg123 /usr/share/sounds/KDE-Im-Irc-Event.ogg


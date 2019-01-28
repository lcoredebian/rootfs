#!/bin/bash

MIRROR="http://ftp.debian.org/debian/"   # Debian mirror
ARCH=${1:-"i386"}                        # Default arch is i386

echo "
Building debian_$ARCH.tar.xz
===============================
MIRROR=$MIRROR
ARCH=$ARCH
Starting install process..."


# Clean previous builds
rm -r image
rm -r dist/debian_$ARCH.tar.xz

# Download packages with deboostrap and install them
# If your architecture is not compatible with the one you're building, qemu will be automatically called
qemu-debootstrap --variant=minbase --include=x11vnc,xterm,xvfb,bspwm,inotify-tools,psmisc,xdotool --arch=$ARCH stable ./image $MIRROR

# Create compressed .tar.xz inside dist/ folder
# Dist format will have the best compression rate possible (which is -9)
XZ_OPT=-9 tar --exclude='dev/*' -Jcf dist/debian_$ARCH.tar.xz image

# Process ended!
echo "

Image successful created!
Enjoy your debian distro on android with LCore!"
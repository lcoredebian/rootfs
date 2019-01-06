#!/bin/bash

md5sum ./dist/debian_i386.tar.xz > ./dist/md5.txt
md5sum ./dist/debian_amd64.tar.xz >> ./dist/md5.txt
md5sum ./dist/debian_armhf.tar.xz >> ./dist/md5.txt
md5sum ./dist/debian_arm64.tar.xz >> ./dist/md5.txt
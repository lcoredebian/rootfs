# LCore Rootfs
Root file systems for LCore app. Generated with qemu and debootstrap from Debian official mirrors.  
Just run: 
```bash
sudo apt install debootstrap qemu-user-static # Install dependencies
sudo ./buildAll.sh
```
  
### Packages included
 - [xvfb](https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml): creates a virtual x screen, which can be used to render debian apps
 - [x11vnc](http://www.karlrunge.com/x11vnc/): a simple vnc server, required to make xvfb screens avaiable inside android
 - [xterm](https://invisible-island.net/xterm/): the lightest yet powerful terminal in Debian repos
 - [bspwm](https://github.com/baskerville/bspwm): a tiling window manager, easy to manage from cli
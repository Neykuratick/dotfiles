## My little personal WIKI

### Beginner Linux Tips

- chmod +x {file name} - To make something exectable

- Installing .tar.gz apps https://www.howtogeek.com/423866/how-to-install-and-use-the-tor-browser-on-linux/

- Setting up default apps: https://askubuntu.com/questions/1219614/xdg-open-doesnt-do-anything-zoom-in-chromium https://www.maketecheasier.com/create-desktop-file-linux/

- pacman speeding up: ``` sudo pacman-optimize ```

- Run app in background: ``` {some app} & disown ```

- To install a binary of some sort instead of searching for appimage search for "bin" version. Then, when you have finally downloaded your package, run ``` sudo pacman -U {package name} ```

#### Setting up default apps:

``` xgd-mime query filetype /home/roman/file ``` - to get xdg filetype

``` xdg-mime query default inode/directory ``` - to get the default app assigned to the filetype. Use insdead of "inode/directory" use your filetype

``` xdg-mime default pcmanfm.desktop inode/directory ``` - to set the default app (pcmanfm) for the filetype (inode/directory)


### Vim

- Search and replace guide https://vim.fandom.com/wiki/Search_and_replace


### Possible problems and solutions

#### Installing a Jetbrain IDE

In order to install Jetbrains IDE the path to their bin directories must be directly specify in the running script. For example for webstorm. When you unpack it there's {webstorm_unpacked_archive_path}/bin/webstorm.sh script running webstorm. You have to copy this script to /usr/bin/webstorm and modify these lines

```
IDE_BIN_HOME=/opt/webstorm/bin
IDE_HOME=/opt/webstorm
```

and change the ``` /opt/webstorm ``` path to whereever you unpacked the archibe

#### Fixing audio

fixing audio not working tutorial https://superuser.com/questions/626606/how-to-make-alsa-pick-a-preferred-sound-device-automatically

run ``` alsamixer ``` to list the ids of all the devices

there are channels in alsamixer displayed under the sound sources. Make sure it's not muted (press M) and make sure it's not true that inly left or right channel is muted (OM, MO, MM). It might be diffficult to see letters (especially "O", but they're there)

### MPV

- Spacebar, Right Mouse - toggle pause

- Enter - next video in the playlist

- [, ] - speed

- Backspade - reset speed


### Qtile related

- qtile config reference: https://gitlab.com/OldTechBloke/dotfiles/-/blob/master/.config/qtile/config.py

- in case if apps in the qtile tray are on different monitors, run meta+ctrl+r to reload qtile config


### Gaming

- installing games in lutris https://forums.lutris.net/t/very-brief-tutorial-on-manually-installing-a-game-in-lutris/2028


### Other

- vscode launches on "code" command

- https://searx.github.io/searx/user/search_syntax.html Searx shortcuts

- ranger -> press Z -> press H. To show hidden files

- java package for minecraft is jdk-adoptopenjdk

- if pip install throws "TypeError: SafeFileCache.set() got an unexpected keyword argument 'expires'" exception, run ``` rm -rf ~/.local/lib/python3.10 ```


## Key bindings

### Alacritty

config: ``` ~/.config/alacritty/alacritty.yml  ```
 - ctrl+=, ctrl++ - increase fontsize (zoom in)
 - ctrl+- - decrease fontsize (zoom out)
 - super+v - paste


## Personal notes

### Todo
 - xbacklight nvidia
 - make shortcut obs --scene Desktop1 --startrecording
 - https://www.youtube.com/watch?v=tnspdGZGEPE keep home clean. zshenv vars



### Setting up default apps:

xdg-mime query default <MIMETYPE> - To see the default app for a fyletype
	example: xdg-mime query default image/png

xdg-mime query filetype <file name> - To see the MIMETYPE  of a particular file (alternative: https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types) 
	example: xdg-mime query filetype image.png

xdg-mime default <app>.desktop <MIMETYPE> - To set an app by default for the specific MIMETYPE
	example xdg-mime default feh.desktop image/png

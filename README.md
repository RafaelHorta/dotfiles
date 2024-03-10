# DOTFILES
### Fonts
* Hack Nerd Font

### Required
* bspwm
* sxhkd
* alacritty (opcional)
* rofi
* feh
* picom
* brightnessctl
* pulseaudio, alsa-utils, pamixer
* polybar
* ranger (opcional)
* network-manager
* dunst
* acpi
* lightdm (opcional)
* betterlockscreen (opcional), xautolock
* flameshot
* neofetch [Theme](https://github.com/Chick2D/neofetch-themes)

### Menus
Menus are displayed with Rofi.
* __bspwm__
   * powermenu
   * wifimenu _(Uses nmcli from network-manager)_
   * swallp _Changes wallpaper and/or terminal color (terminal color needs wal)_
* __dunst__
   * brightness _(Uses brightnessctl)_
   * volumemanager _(Uses pamixer)_
   * statusbattery _(Uses acpi and is used by crontab)_

### Icons
```sh
# Add icons in
.local/share/icons/
```


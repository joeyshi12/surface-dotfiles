# surface-dotfiles

bspwm configuration files for running linux on the Surface Pro

## High DPI bug / Improper scaling fix 
- `cp .xinitrc ~ && cp .Xresources ~`

## Touchpad adjustments
- `sudo cp 40-libinput.conf /usr/share/X11/xorg.conf.d`

## Intellij window loading bug fix
- `sudo cp jre.sh /etc/profile.d`

## TODO
- Lockscreen
- High DPI fix for Steam
- Make a better volume widget

![2021-05-30_02-40](https://user-images.githubusercontent.com/46363213/120099467-73a7e880-c0f0-11eb-9707-e752329ad454.png)
![2021-05-30_02-28](https://user-images.githubusercontent.com/46363213/120099182-0d6e9600-c0ef-11eb-9ac0-b312c3dfbeb7.png)

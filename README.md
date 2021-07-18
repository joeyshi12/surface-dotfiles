# surface-dotfiles

bspwm configuration files for running Linux on the Surface Pro

**Usage**
- Polybar, Rofi (launchers/applets) components can be added in their respected folders in .config/bspwm
- Rofi launch scripts are mapped to keyboard shortcuts (super + @space = launcher, super + alt + q = powermenu) in .config/bspwm/sxhkd/sxhkdrc
- Startup applications are configured in .config/bspwm/start-apps.sh. We can target different polybar launch scripts, wallpapers, etc in here

**High DPI bug / improper scaling fix**

`cp .xinitrc ~ && cp .Xresources ~ && cp .profile ~`

**Touchpad speed adjustments + enable tapping**

`sudo cp 40-libinput.conf /usr/share/X11/xorg.conf.d`

**Intellij window loading bug fix**

`sudo cp jre.sh /etc/profile.d`

**Blue sky theme**

Currently set as default (credits to <a href="https://github.com/VaughnValle/blue-sky">VaughnValle</a> for the design)
![2021-07-17_17-01](https://user-images.githubusercontent.com/46363213/126051883-0ee057f1-5d6b-4403-9e30-b81c1f5d02fb.png)

**Monochrome theme**

Change terminal colorscheme to monochrome + change the wallpaper and polybar in .config/bspwm/start-apps
![2021-05-30_02-40](https://user-images.githubusercontent.com/46363213/120099467-73a7e880-c0f0-11eb-9707-e752329ad454.png)

**Hollow Knight browser new tab**

Install <a href="https://chrome.google.com/webstore/detail/nighttab/hdpcadigjkbcpnlcpbcohpafiaefanki?hl=en-GB">Night Tab</a> and load the data in nightTab.json
![2021-05-30_02-28](https://user-images.githubusercontent.com/46363213/120099182-0d6e9600-c0ef-11eb-9ac0-b312c3dfbeb7.png)

**TODO**
- Lockscreen
- Make a better volume widget

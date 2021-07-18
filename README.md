# surface-dotfiles

These dotfiles are for configuring a BSPWM desktop environment for a Surface Pro running Linux.

**Dependencies**

`bspwm polybar rofi picom dunst i3lock vim ranger alacritty`

**Usage**
- Startup applications are configured in .config/bspwm/start-apps.sh. Different polybars and wallpapers can be configured here.
- Keyboard shortcuts are configured in .config/bspwm/sxhkd/sxhkdrc. The scripts for the launcher and powermenu are mapped to `super + @space` and `super + alt + q` respectively
- Themes, fonts, icons should be copied to `/usr/share/themes`, `/usr/share/fonts`, `/usr/share/icons` respectively and can be configured in `~/.config/gtk-3.0`

**Notes on bug fixes**

Bug | Fix
--- | ---
High DPI / scaling bug | `cp .xinitrc ~ && cp .Xresources ~` for proper DPI scaling. Add `export GDK_SCALE=2` and `export GDK_DPI_SCALE=0.5` to your `~/.profile` to fix ui scaling
Touchpad configuration | `sudo cp 40-libinput.conf /usr/share/X11/xorg.conf.d` to enable tap click, natural scrolling, and increased cursor speed
Intellij infinite loading | `sudo cp jre.sh /etc/profile.d`


</details>

<details>
  <summary> <samp>&#9776; Blue Theme (default)</samp></summary>
  Credits to <a href="https://github.com/VaughnValle/blue-sky">VaughnValle</a> for the design
  <img src="https://user-images.githubusercontent.com/46363213/126051883-0ee057f1-5d6b-4403-9e30-b81c1f5d02fb.png"/>
  </div>
</details>

<details>
  <summary> <samp>&#9776; Monochrome theme</samp></summary>
  <div>
    <div>
      <h3>How to configure</h3>
      <ul>
        <li>In your <code>~/.config/alacritty/alacritty.yml</code>, change <code>colors: *blue</code> to <code>colors: *monochrome</code> to change your Alacritty terminal colour scheme</li>
        <li>In <code>~/.config/bspwm/start-apps</code>, change the wallpaper and polybar to "monochrome"</li>
      </ul>
    </div>
    <img src="https://user-images.githubusercontent.com/46363213/120099467-73a7e880-c0f0-11eb-9707-e752329ad454.png"/>
  </div>
</details>
  
<details>
  <summary> <samp>&#9776; Hollow Knight Browser Tab</samp></summary>
  <div>
    <div>
      <h3>How to configure</h3>
      <p>Install <a href="https://chrome.google.com/webstore/detail/nighttab/hdpcadigjkbcpnlcpbcohpafiaefanki?hl=en-GB">Night Tab</a> and load the data in nightTab.json</p>
    </div>
    <img src="https://user-images.githubusercontent.com/46363213/120099182-0d6e9600-c0ef-11eb-9ac0-b312c3dfbeb7.png"/>
  </div>
</details>

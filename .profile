# run .bashrc if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ "$DESKTOP_SESSION" = "bspwm" ]; then
    # scale UI
    export GDK_SCALE=2
    # undo dpi scaling from GDK_SCALE since this is handled in ~/.Xresources
    export GDK_DPI_SCALE=0.5
fi
# bug: resetting GDK scale variables gives window title bar buttons incorrect sizes.
#      It is currently best to reboot before changing desktop environments
#else
#    export GDK_SCALE=1
#    export GDK_DPI_SCALE=1
#fi

# Intellij infinite loading bug fix
export _JAVA_AWT_WM_NONREPARENTING=1


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

# fix UI scaling if running bspwm
if pgrep -x bspwm >/dev/null
then
    # scale UI
    export GDK_SCALE=2
    # undo dpi scaling from GDK_SCALE since this is handled in ~/.Xresources
    export GDK_DPI_SCALE=0.5
fi


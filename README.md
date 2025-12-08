# This is the setup for Hyprland Omarchy Setup

1. sudo ln -s ~/.dotfiles/.config/hypr/ ~/.config/hypr
2.

## Setup From Omarchy

I required:

- swayosd (Config for Sway On-Screen Display (like volume/brightness popup on Wayland).)
- uwsm (Config for User Wayland Session Manager (used to start sessions).)
- walker (Config for Walker App Launcher (a rofi/wofi alternative).)
- waybar (Config for Waybar (your top bar/status bar for Hyprland).)
- hypridle (Hanldes screen dimming, locking, suspending and turning off)
- mako (Mako is a notification daemon for Wayland, commonly used with window managers like Hyprland, Sway)     ● MD013/line-length Line len
- fcitx5 (Config for Fcitx5 input method (for Japanese, Chinese, emoji, etc.))
- swaybg (Wallpaper tool for Wayland compositors)

I need:

- btop (Config for btop, a graphical system monitor in terminal (CPU, RAM usage).)

```bash
sudo pacman -S btop
```

1. `cp -r config/hypr ~/.config/`
2. `cp -r config/uwsm ~/.config/`
3. `cp -r config/swayosd ~/.config/`
3. `cp -r config/waybar ~/.config/`

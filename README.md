# Dotfiles

Bits of other dotfiles combined with my own configuration for the perfect aesthetic.

- OS: arch
- Theme: gruvbox
- Compositor: hypr
- DE: Hyprland
- Run Menu: rofi
- Notifications: dunst
- Terminal: alacritty
- Shell: fish
- Editor: [neovim](https://github.com/rithulkamesh/nvim)
- [Wallpaper](./wall.jpg)

## Instructions for Installation

You can choose to do this one of two ways

1. By Symlinking the files in this folder to your `~/.config`
2. By Copying over the downloaded folder(s) to your `~/.config`

### Symlinking

This is the method I personally prefer.

```bash
mkdir -p ~/.dots && git clone git@github.com:rithulkamesh/dots.git ~/.dots
```

and then link necessary folders as such

```bash
ln -s ~/.dots/<conf> ~/.config
```

## Contributions

Any contributions are accepted under the [MIT License](./LICENSE) and all Contributions are welcome.

---
© 2023-Present Rithul Kamesh. Accredition is appreciated but not necessary.

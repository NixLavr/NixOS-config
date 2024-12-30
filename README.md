![nixos-white](https://github.com/StasLavr/NixOS-Conf/assets/110830098/eb4d66a8-1e6c-4173-a09a-10b7ff26762c)
# NixOS-Conf
NixOS configuration; Dotfiles Hyprland

```bash
git clone https://github.com/StasLavr/NixOS-Conf.git
mv nixos-config $HOME/nix # Config is supposed to be in the ~/nix directory
cd $HOME/nix
sudo nixos-rebuild switch --flake .#NixOS
```

![1713934316_grim](https://github.com/StasLavr/NixOS-Conf/assets/110830098/a947a4ed-e15c-48f3-8fdc-9bf515375a34)

## Programs

The `home.nix` file contains details about all the software I use, but here's a shout-out to the ones I use the most and that are customized to my needs.

| Type           | Program      |
| :------------- | :----------: |
| Editor         | Visual Studio Code & NeoVim |
| Launcher       | Rofi |
| Shell          | Fish |
| Status Bar     | Waybar |
| Terminal       | Kitty |
| Window Manager | Hyprland |

## Themes

| Type           | Name      |
| :------------- | :----------: |
| GTK Theme      | Tokyonight-Storm-BL-LB  |
| GTK Icon Theme | Flat-Remix-Blue-Dark |
| Terminal Font  | JetBrainsMono Nerd Font |



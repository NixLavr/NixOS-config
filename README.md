<div align="center"><img src="assets/nixos-logo.png" width="300px"></div>
<h1 align="center">MaxMur ❄️ NixOS Public Configuration</h1>
<div align="center">

![nixos](https://img.shields.io/badge/NixOS-unstable-blue.svg?style=flat&logo=nixos&logoColor=CAD3F5&colorA=24273A&colorB=8aadf4)
![flake check](https://img.shields.io/static/v1?label=Nix%20Flake&message=Check&style=flat&logo=nixos&colorA=24273A&colorB=9173ff&logoColor=CAD3F5)
![license](https://img.shields.io/static/v1.svg?style=flat&label=License&message=Unlicense&colorA=24273A&colorB=91d7e3&logo=unlicense&logoColor=91d7e3&)

</div>

```bash
git clone https://github.com/StasLavr/NixOS-Conf.git
mv nixos-config $HOME/nix # Config is supposed to be in the ~/nix directory
cd $HOME/nix
sudo nixos-rebuild switch --flake .#NixOS
home-manager switch --flake .#lavr
```

![screen](assets/screen.png)

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



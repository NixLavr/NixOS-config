
{ inputs, config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "lavr";
  home.homeDirectory = "/home/lavr";
  home.stateVersion = "24.11";

  # GTK #
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.flat-remix-icon-theme;
      name = "Flat-Remix-Blue-Dark";
    };
    font.name = "Roboto";
    font.size = 9;
    theme = {
      package = pkgs.tokyonight-gtk-theme;
      name = "Tokyonight-Dark";
      };
 };
 # Let Home Manager install and manage itself.``
  programs.home-manager.enable = true;
  imports = [
    inputs.ags.homeManagerModules.default
    ./home/wm/hypr
    ./home/wm/waybar
    ./home/wm/kitty
    ./home/wm/dunst
    ./home/wm/wlogout
    ./home/wm/rofi
  ];
}

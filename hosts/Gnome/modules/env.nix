{
  inputs,
  config,
  pkgs,
  ...
}: {
  environment.sessionVariables = {
    FLAKE = "/home/lavr/.system";
    WLR_NO_HARDWARE_CURSORS = "1";
    QT_QPA_PLATFORMTHEME = "gtk3";
    XDG_SESSION_TYPE = "wayland";
    NIXOS_OZONE_WL = "1";
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_DESKTOP = "Hyprland";
    NIXPKGS_ALLOW_UNFREE = "1";
  };
}

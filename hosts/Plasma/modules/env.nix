{
  inputs,
  config,
  pkgs,
  ...
}: {
  environment.sessionVariables.FLAKE = "/home/lavr/.system";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";
  environment.sessionVariables.QT_QPA_PLATFORMTHEME = "qt5ct";
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.NIXPKGS_ALLOW_INSECURE = "1";
  environment.sessionVariables.XDG_CURRENT_DESKTOP = "GNOME";
}

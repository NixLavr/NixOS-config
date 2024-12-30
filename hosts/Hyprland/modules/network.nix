{
  inputs,
  config,
  pkgs,
  ...
}: {
  # Network #
  networking.networkmanager.enable = true; # Easiest to use and most distros use this by default.
  networking.hostName = "NixOS";
}

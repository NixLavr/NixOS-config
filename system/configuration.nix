# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
{
  inputs,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./syspkg.nix
    ./configuration/boot.nix
    ./configuration/env.nix
    ./configuration/fonts.nix
    ./configuration/locale.nix
    ./configuration/network.nix
    ./configuration/nix.nix
    ./configuration/nvidia.nix
    ./configuration/order.nix
    ./configuration/sound.nix
    ./configuration/user.nix
    ./configuration/xserver.nix
  ];
}

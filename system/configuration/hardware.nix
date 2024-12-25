{
  inputs,
  config,
  pkgs,
  ...
}: {
  # Hardware #
  powerManagement.powertop.enable = true;
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;
}

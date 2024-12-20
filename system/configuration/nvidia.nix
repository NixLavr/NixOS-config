{ inputs, config, pkgs, ... }:

{
  # Nvidia #
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    open = true;
    nvidiaSettings = false;
  };
}
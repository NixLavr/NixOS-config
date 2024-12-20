{ inputs, config, pkgs, ... }:
let
grub-theme = import ../../pkgs/grub-theme/default.nix  { inherit pkgs; };
in
{
# Boot loader # 
  boot.kernelParams = [ "quiet" "rhgb" ];
  boot.supportedFilesystems = [ "ntfs" ];
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi"; 
    };

    grub = {
      efiSupport = true;
      device = "nodev";
      useOSProber = true;
      gfxmodeEfi = "1920x1080x32";
      theme = grub-theme;
    };
  };
}

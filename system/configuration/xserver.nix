{ inputs, config, pkgs, ... }:
{
  # Xserver #
  services.xserver.enable = true;
  services.xserver.excludePackages = with pkgs; [
   xterm
  ];
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  programs.hyprland.enable = true;
  programs.dconf.enable = true;
  hardware.opengl.driSupport32Bit = true;
    
  # xdg #
  xdg.portal.enable = true;
  
  # Layout #
  services.xserver = {
    layout = "us,ru";
    xkbOptions = "grp:win_space_toggle";
  };
}
{
  inputs,
  config,
  pkgs,
  ...
}: {
  # ADB #
  programs.adb.enable = true;
  users.users.lavr.extraGroups = ["adbusers"];
  # Virtal #
  virtualisation.libvirtd.enable = true;
  virtualisation.docker.enable = true;
  virtualisation.docker.enableNvidia = true;
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = ["lavr"];
  environment.sessionVariables = {
    DOTNET_ROOT = "${pkgs.dotnet-sdk_7}";
  };
  # OpenSSH #
  services.openssh.enable = true;
  # Steam #
  nixpkgs.config.allowUnfree = true;
  programs.steam = {
    enable = true;
  };
  system.stateVersion = "24.05";
}

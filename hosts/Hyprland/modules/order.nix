{
  inputs,
  config,
  pkgs,
  ...
}: {
  # Virtal #
  virtualisation.docker.enable = true;
  virtualisation.docker.enableNvidia = true;
  # OpenSSH #
  services.openssh.enable = true;
  # Steam #
  nixpkgs.config.allowUnfree = true;
  programs.steam = {
    enable = true;
  };
  system.stateVersion = "24.05";
}

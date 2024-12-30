{
  inputs,
  config,
  pkgs,
  lib,
  ...
}: {
  # Nix Conf #
  nixpkgs.config.nvidia.acceptLicense = true;
  documentation = {
    enable = true;
    doc.enable = false;
    man.enable = false;
    dev.enable = false;
  };
  nix.settings.substituters = lib.mkForce ["https://nixos-cache-proxy.cofob.dev"];
  nix.settings.experimental-features = ["nix-command" "flakes"];
}
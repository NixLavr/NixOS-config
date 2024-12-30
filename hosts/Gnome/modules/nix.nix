{
  inputs,
  config,
  pkgs,
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
  nix.settings.experimental-features = ["nix-command" "flakes"];
}

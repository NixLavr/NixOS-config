{pkgs ? import <nixpkgs> {}}:
pkgs.stdenv.mkDerivation rec {
  pname = "grub-theme";
  version = "0.0.1";

  src = pkgs.fetchFromGitHub {
    owner = "catppuccin";
    repo = "grub";
    rev = "ffcceb344e2bc86adc8e64437459c1f38adf5b63";
    hash = "sha256-bDw+W69jeSiE1VBdQqqaeZf7OqCN7q5XYJ5+94PILXE=";
  };
  installPhase = ''
    cp -r src/catppuccin-macchiato-grub-theme $out
  '';
}

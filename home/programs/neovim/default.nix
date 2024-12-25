{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      lua-language-server
      gopls
      nixd
      stylua
      prettierd
      alejandra
    ];
  };
   home.file = {
    ".config/nvim".source = ./config;
  };
  nix.nixPath = ["nixpkgs=${inputs.nixpkgs}"];
}

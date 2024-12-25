{
  inputs,
  config,
  pkgs,
  ...
}: {
  # Fonts #
  fonts.fonts = with pkgs; [
    font-awesome
    roboto
    intel-one-mono
    corefonts
    (nerdfonts.override {fonts = ["FiraCode" "JetBrainsMono"];})
  ];
}

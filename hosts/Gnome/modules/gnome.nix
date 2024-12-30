{
  inputs,
  config,
  pkgs,
  ...
}: {
  environment.gnome.excludePackages =
    (with pkgs; [
      gnome-photos
      gnome-tour
    ])
    ++ (with pkgs.gnome; [
      cheese # webcam tool
      gnome-music
      gnome-calendar
      gnome-calculator
      simple-scan
      gnome-contacts
      gnome-weather
      yelp
      gnome-terminal
      epiphany # web browser
      geary # email reader
      evince # document viewer
      gnome-characters
      totem # video player
      tali # poker game
      iagno # go game
      hitori # sudoku game
      atomix # puzzle game
      gnome-maps
    ]);
}

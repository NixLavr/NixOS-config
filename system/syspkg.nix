{ config, pkgs, ... }:
{
   nixpkgs.config.permittedInsecurePackages = [
                "dotnet-runtime-7.0.20"
              ];
  # System Apps #
  environment.systemPackages = with pkgs; [
    # CUI #
    wget
    git
    vim
    btop
    home-manager
    pfetch
    fastfetch
    unzip
    python3
    brightnessctl
    libnotify
    nodejs
    gcc
    go
    ranger
    nh
    nix-output-monitor
    nvd
    lutgen
    docker-compose
    # GUI Apps
    
    # IDE #
    vscode
    
    # WM #
    rofi-wayland
    firefox
    wlogout
    nwg-drawer
    grim
    mpv
    networkmanagerapplet
    waypaper
    swaybg
    waybar
    kitty
    
    # Programs #
    telegram-desktop
    mangohud
    glib
    heroic
    goverlay
    libreoffice
    gimp
    gwenview
    ark
    qbittorrent
    thunderbird
    prismlauncher
    
    # Libs & Order
    mangohud
    glib
    jdk8
    jdk17
    ffmpeg
    gnome.adwaita-icon-theme
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtquickcontrols2
    # Cell Packages 
    (callPackage ../pkgs/vintage-story/default.nix { }) 
  ];
   # Thunar #
   programs.thunar.enable = true;
   services.tumbler.enable = true;
   programs.thunar.plugins = with pkgs.xfce; [
   thunar-archive-plugin
   thunar-volman
];
}

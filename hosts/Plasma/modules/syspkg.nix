{
  config,
  pkgs,
  ...
}: {
  nixpkgs.config.permittedInsecurePackages = ["dotnet-sdk-7.0.410" "dotnet-sdk-wrapped-7.0.410" "dotnet-runtime-wrapped-7.0.20" "dotnet-runtime-7.0.20"];
  nixpkgs.config.allowUnfree = true;
  programs.nix-ld.enable = true;
  # System Apps #
  environment.systemPackages = with pkgs; [
    # Develop #
    vscode
    git
    python3
    postman
    android-studio
    docker-compose
    go
    nodejs
    pgadmin
    # CUI #
    wget
    btop
    home-manager
    pfetch
    fastfetch
    unzip
    nh
    nix-output-monitor
    nvd
    go
    python312Packages.kde-material-you-colors
    # Programs #
    telegram-desktop
    firefox
    mangohud
    goverlay
    vlc
    libreoffice
    gimp
    qbittorrent
    thunderbird
    prismlauncher
    nixfmt
    # Libs & Order
    mangohud
    glib
    jdk8
    jdk17
    ffmpeg
    gnome.adwaita-icon-theme
    # Cell Packags #
    #(callPackage ../pkgs/vintagestory/default.nix { })
    #(callPackage ../pkgs/windserf/default.nix { })
  ];
}

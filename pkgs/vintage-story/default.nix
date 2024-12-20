{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation rec {
  pname = "vintagestory";
  version = "1.19.8";

  src = fetchTarball {
    url =
      "file:///home/lavr/.system/pkgs/vintagestory/vs_client_linux-x64_1.19.8.tar.gz";
    sha256 = "sha256:0kkya1la8zf5zzpymcfpf91q8wzmqxykdj29f3hn5d3wn21md87p";
  };

  nativeBuildInputs = with pkgs; [ makeWrapper copyDesktopItems ];

  buildInputs = with pkgs; [ dotnet-runtime_7 ];

  runtimeLibs = with pkgs;
    pkgs.lib.makeLibraryPath ([
      gtk2
      sqlite
      openal
      cairo
      libGLU
      SDL2
      freealut
      libglvnd
      pipewire
      libpulseaudio
    ] ++ (with xorg; [ libX11 libXi libXcursor ]));

  desktopItems = [
    (pkgs.makeDesktopItem {
      name = "vintagestory";
      desktopName = "Vintage Story";
      exec = "vintagestory";
      icon = "vintagestory";
      comment = "Innovate and explore in a sandbox world";
      categories = [ "Game" ];
    })
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/vintagestory $out/bin $out/share/pixmaps $out/share/fonts/truetype
    cp -r * $out/share/vintagestory
    cp $out/share/vintagestory/assets/gameicon.xpm $out/share/pixmaps/vintagestory.xpm
    cp $out/share/vintagestory/assets/game/fonts/*.ttf $out/share/fonts/truetype

    runHook postInstall
  '';

  preFixup = with pkgs;
    ''
      makeWrapper ${dotnet-runtime_7}/bin/dotnet $out/bin/vintagestory \
        --prefix LD_LIBRARY_PATH : "${runtimeLibs}" \
        --add-flags $out/share/vintagestory/Vintagestory.dll
      makeWrapper ${dotnet-runtime_7}/bin/dotnet $out/bin/vintagestory-server \
        --prefix LD_LIBRARY_PATH : "${runtimeLibs}" \
        --add-flags $out/share/vintagestory/VintagestoryServer.dll
    '' + ''
      find "$out/share/vintagestory/assets/" -not -path "*/fonts/*" -regex ".*/.*[A-Z].*" | while read -r file; do
        local filename="$(basename -- "$file")"
        ln -sf "$filename" "''${file%/*}"/"''${filename,,}"
      done
    '';

}

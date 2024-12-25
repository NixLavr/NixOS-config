{
  pkgs,
  stdenv,
  cmake,
  fetchFromGitHub,
  pkg-config,
  glm,
  glfw,
  zlib,
  libpng,
  libvorbis,
  openal,
  luajit,
  curl,
  mesa,
  freeglut,
  entt,
  glew,
  ...
}:
stdenv.mkDerivation rec {
  pname = "voxelengine";
  version = "0.25.3";
  src = fetchFromGitHub {
    owner = "MihailRis";
    repo = "VoxelEngine-Cpp";
    rev = "da484da17c2f77d26d1190d439bab7c0a3db398d";
    hash = "sha256-ft58reMqhOPM69R97XFOJ4ELbgE0901BHEXl3stFEdo=";
  };
  nativeBuildInputs = [cmake pkg-config];
  buildInputs = [glm glfw glew zlib libpng libvorbis openal luajit curl entt]; # libglvnd
  packages = [glfw mesa freeglut entt];

  installPhase = ''
    cmake -DCMAKE_BUILD_TYPE=Release .
    cmake --build ./
    mkdir -p $out/bin/
    mkdir -p $out/share/voxelengine
    cp -dr * $out/bin/
    cp -r res $out/bin
  '';
}

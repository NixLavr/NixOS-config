{pkgs, ...}: {
  windsurf = pkgs.callPackage ./windsurf {};
  vintage = pkgs.callPackage ./vintage-story {};
  voxelengine = pkgs.callPackage ./voxelengine {};
}

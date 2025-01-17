{
  description = "Nix config by Lavr";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:/nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ags.url = "github:Aylur/ags";
  };
  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnFree = true;
      };
    };
  in {
    packages.${system} = import ./pkgs {
      inherit nixpkgs;
      pkgs = nixpkgs.legacyPackages.${system};
    };
    nixosConfigurations = {
      Hyprland = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs self system;};
        modules = [
          ./hosts/Hyprland/default.nix
          ./hosts/hardware-configuration.nix
        ];
      };
      Plasma = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs self system;};
        modules = [
          ./hosts/Plasma/default.nix
          ./hosts/hardware-configuration.nix
        ];
      };
      Gnome = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs self system;};
        modules = [
          ./hosts/Gnome/default.nix
          ./hosts/hardware-configuration.nix
        ];
      };
    };

    homeConfigurations.lavr = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {inherit inputs;};
      modules = [./home.nix];
    };
  };
}

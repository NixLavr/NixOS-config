{
  description = "Nix config by Lavr";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    
    home-manager = {
      url = "github:/nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ags.url = "github:Aylur/ags";

  };
  outputs = { self, nixpkgs, home-manager, ... } @inputs:

    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnFree = true;
        };
      };

    in

    {
      nixosConfigurations = {
        NixOS = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./system/configuration.nix

          ];
        };
      };

      homeConfigurations.lavr = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = { inherit inputs; };
      modules = [ ./home.nix ];
    };

    };

} 


{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    plasma-manager.url = "github:nix-community/plasma-manager";
    plasma-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    homeManagerModule = [
      home-manager.nixosModules.home-manager
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.users.cjcode = ./home/cjcode.nix;
        home-manager.users.nixos-config = ./home/nixos-config.nix;
      }
    ];
    mkSystem = extraModules:
      nixpkgs.lib.nixosSystem {
        pkgs = import nixpkgs {
          system = "x86_64-linux";
          config.allowUnfree = true;
        };
        system = "x86_64-linux";
        modules = extraModules ++ homeManagerModule;
      };
  in {
    nixosConfigurations = {
      CJcode0x01 = mkSystem [./common ./hw-configs/CJcode0x01.nix];
      CJcode0x02 = mkSystem [./common ./hw-configs/CJcode0x02.nix];
    };
  };
}

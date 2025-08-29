{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    mkSystem = extraModules:
      nixpkgs.lib.nixosSystem {
        pkgs = import inputs.nixpkgs {
          system = "x86_64-linux";
          config.allowUnfree = true;
        };
        system = "x86_64-linux";
        modules = extraModules;
      };
  in {
    nixosConfigurations = {
      CJcode0x02 = mkSystem [./common ./hw-configs/CJcode0x02.nix];
    };
  };
}

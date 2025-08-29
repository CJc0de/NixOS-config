{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    test = 0;
  in {
    nixosConfigurations = {
      CJcode0x01 = inputs.nixpkgs.lib.nixosSystem {
        pkgs = import inputs.nixpkgs {
          system = "x86_64-linux";
          config.allowUnfree = true;
        };
        system = "x86_64-linux";
        modules = [./configuration.nix];
      };
    };
  };
}

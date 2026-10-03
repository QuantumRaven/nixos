{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the unstable branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Hjem
    hjem = {
      url = "github:feel-co/hjem";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      void = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          hjem.nixosModules.default
          ./hosts/void/configuration.nix
        ];
      };
      andromeda = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          hjem.nixosModules.default
          ./hosts/andromeda/configuration.nix
        ];
      };
    };
  };
}

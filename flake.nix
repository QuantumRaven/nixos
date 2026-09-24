{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the unstable branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      void = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/void/configuration.nix
        ];
      };
      andromeda = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/andromeda/configuration.nix
        ];
      };
    };
  };
}

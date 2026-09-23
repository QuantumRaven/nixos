{ config, pkgs, lib, ... }:

let
  # Import each package file and extract its list
  appPackages = import ./packages/apps.nix { inherit pkgs; };
  browserPackages = import ./packages/browsers.nix { inherit pkgs; };
  devPackages = import ./packages/dev.nix { inherit pkgs; };
  learningPackages = import ./packages/learning.nix { inherit pkgs; };
  mediaPackages = import ./packages/media.nix { inherit pkgs; };

in
{
  users.users.corvidae = {
    isNormalUser = true;
    description = "corvidae";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    shell = pkgs.bash;

    # Concatenate all modular package lists together
    packages =
      appPackages.home.packages ++
      browserPackages.home.packages ++
      devPackages.home.packages ++
      learningPackages.home.packages ++
      mediaPackages.home.packages;
  };
}

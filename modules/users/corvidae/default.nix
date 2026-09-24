{ config, pkgs, lib, ... }:

let
  # Import each package file and extract its list
  appPackages = import ./packages/apps.nix { inherit pkgs; };
  browserPackages = import ./packages/browsers.nix { inherit pkgs; };
  devPackages = import ./packages/dev.nix { inherit pkgs; };
  learningPackages = import ./packages/learning.nix { inherit pkgs; };

in
{
  users.users.corvidae = {
    isNormalUser = true;
    description = "corvidae";
    inherit (secretPassword) hashedPassword;
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    shell = pkgs.bash;

    # Concatenate all modular package lists together
    packages =
      appPackages ++
      browserPackages ++
      devPackages ++
      learningPackages;
  };
}

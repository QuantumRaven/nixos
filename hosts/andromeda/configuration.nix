# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./bootloader.nix
      ./hardware-configuration.nix
      ../../modules/core
      ../../modules/desktop
      ../../modules/programs
      ../../modules/services
      ../../modules/users/corvidae
      ../../modules/impure_pkgs.nix
      # Andromeda specific configs
      ../../modules/desktop/niri.nix
    ];

  system.stateVersion = "25.05"; # Did you read the comment?

}

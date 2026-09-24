{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./bootloader.nix
      ./hardware-configuration.nix
      # Include modules for all systems
      ../../modules/core
      ../../modules/desktop
      ../../modules/programs
      ../../modules/services
      ../../modules/users/corvidae
      ../../modules/impure_pkgs.nix
      # Void-specific modules
      ../../modules/core/amd.nix
      ../../modules/users/corvidae/packages/media.nix
      ../../modules/core/opengl.nix
      ../../modules/programs/obs_studio.nix
      ../../modules/programs/steam.nix
      ../../modules/core/storage.nix
      ../../modules/core/virtualization.nix
    ];

  # Void-specific firewall ruling. KVM virtual bridge
  networking.firewall.trustedInterfaces = [ "virbr0" ];

  # Hardware
  hardware.enableRedistributableFirmware = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  system.stateVersion = "25.05"; # Did you read the comment?

}

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../../modules/core
      ../../modules/desktop
      ../../modules/programs
      ../../modules/services
      ../../modules/users/corvidae
      ../../modules/impure_pkgs.nix
      # Void-specific components
      ../../modules/core/amd.nix
      ../../modules/core/opengl.nix
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

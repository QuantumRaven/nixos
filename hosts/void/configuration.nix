# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # Bootloader
      modules/bootloader.nix
      # Disable nano
      modules/disable_nano.nix
      # Fish
      modules/fish.nix
      # Firewall
      modules/firewall.nix
      # Git
      modules/git.nix
      # Impure pkgs
      modules/impure_pkgs.nix
      # Nix Flakes
      modules/nix_flakes.nix
      # Neovim
      modules/neovim.nix
      # Networking
      modules/networking.nix
      # SSH
      modules/openssh.nix
      # Podman
      modules/podman.nix
      # System Packages
      modules/sys_pkgs.nix
      # Tiling Window Manager
      modules/sway.nix
      # Time
      modules/time.nix
      # User
      modules/users/corvidae.nix
    ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}

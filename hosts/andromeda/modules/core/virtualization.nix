{ config, pkgs, ... }:

{

# Containerization - Podman

  # Enable podman
  virtualisation.podman.enable = true;
  virtualisation.podman.dockerCompat = true;

}
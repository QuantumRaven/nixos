{ config, pkgs, ... }:

# Containerization - Podman
  # Enable podman
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };
}

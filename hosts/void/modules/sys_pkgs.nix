{ config, pkgs, ... }:

{

  # Enable dconf (System Management Tool)
  programs.dconf.enable = true;

  # Install packages
  environment.systemPackages = with pkgs; [
    dnsmasq
    gcc
    gnumake
    go
    python315
    ruff
    distrobox
    sshpass
  ];
}

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
    python314
    python314Packages.ipython
    python314Packages.jinja2
    python314Packages.matplotlib
    python314Packages.numpy
    python314Packages.scipy
    python314Packages.sympy
    ruff
    distrobox
    sshpass
  ];
}

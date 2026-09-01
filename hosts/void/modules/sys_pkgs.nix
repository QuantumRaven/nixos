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
    (pkgs.python314.withPackages (ps: with ps; [
      ipython
      jinja2
      matplotlib
      numpy
      scipy
      sympy
    ]))
    ruff
    distrobox
    sshpass
  ];
}

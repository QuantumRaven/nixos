{ config, pkgs, ... }:

{

  # Enable dconf (System Management Tool)
  programs.dconf.enable = true;

  # Install packages
  environment.systemPackages = with pkgs; [
  virt-manager
  virt-viewer
  spice spice-gtk
  spice-protocol
  win-virtio
  win-spice
  gcc
  gnumake
  go
  python3Full
  pylint
  nfs-utils
  distrobox
  
  ];

}

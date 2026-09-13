{ config, pkgs, ... }:

{

  # Enable dconf (System Management Tool)
  programs.dconf.enable = true;

  # Install packages
  environment.systemPackages = with pkgs; [
    dnsmasq
    nftables
    nfs-utils
  ];
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.audio = true;
  };
  xdg-portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk];
  };

}

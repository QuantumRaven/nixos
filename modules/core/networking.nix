{ config, pkgs, ... }:

{
  networking.firewall.enable = true;
  services.resolved.enable = true;
}

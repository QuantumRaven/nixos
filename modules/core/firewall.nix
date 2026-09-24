{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
     ];
     allowedUDPPorts = [
     ];
     allowedTCPPortRanges = [
       {
       # For various self-hosted apps/services
       from = 8000;
       to = 8100;
       }
     ];
  };

}

{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
     10400 # Misc port for web server containers
     ];
     allowedUDPPorts = [
     ];
  };

}

{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
       3000 # Linkwarden
     ];
     allowedUDPPorts = [
     ];
  };

}

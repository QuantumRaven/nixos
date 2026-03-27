{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
       3000 # Linkwarden
       3456 # Vikunja
       8000 # Python Web Module
     ];
     allowedUDPPorts = [
     ];
  };

}

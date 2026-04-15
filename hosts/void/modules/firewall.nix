{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
       3456 # Vikunja
       8000 # Python http module
     ];
     allowedUDPPorts = [
     ];
  };

}

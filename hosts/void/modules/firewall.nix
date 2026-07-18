{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
       3456 # Vikunja
       8080 # Nextcloud container
     ];
     allowedUDPPorts = [
     ];
     allowedTCPPortRanges = [
       # For various self-hosted apps/services
       from = 8000
       to = 8100
     ];
     trustedInterfaces = [ "virbr0" ];
  };

}

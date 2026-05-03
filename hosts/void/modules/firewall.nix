{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
       3456 # Vikunja
       8000 # Python http module
       8080 # Nextcloud container
     ];
     allowedUDPPorts = [
     ];
     trustedInterfaces = [ "virbr0" ];
  };

}

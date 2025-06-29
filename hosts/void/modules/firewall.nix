{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [ 
     8000 # paperless-ngx
     8080 # nextcloud
     ];
#     allowedUDPPorts = [ ... ];
  };

}

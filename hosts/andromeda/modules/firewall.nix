{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [ 
     8000 # paperless-ngx
     8080 # nextcloud - Google/OneDrive alterantive
     2283 # immich - Google Photos alternative
     ];
#     allowedUDPPorts = [ ... ];
  };

}

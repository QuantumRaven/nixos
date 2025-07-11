{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [ 
     8000 # paperless-ngx
     ];
#     allowedUDPPorts = [ ... ];
  };

}

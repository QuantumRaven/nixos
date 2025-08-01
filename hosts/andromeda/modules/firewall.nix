{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
     631
     8000 # paperless-ngx
     ];
     allowedUDPPorts = [
     631
     5353
     ];
  };

}

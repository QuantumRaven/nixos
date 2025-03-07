{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [ 8888 8000 ];
#     allowedUDPPorts = [ ... ];
  };

}

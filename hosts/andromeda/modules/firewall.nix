{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
     10400
     ];
     allowedUDPPorts = [
     ];
  };

}

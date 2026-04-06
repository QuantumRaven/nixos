{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [

     ];
     allowedUDPPorts = [
     ];
  };

}

{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
      # Containers
        3000 # Gitea
      # Network File Share
        111
        2049
        4000
        4001
        4002
        20048

     ];
     allowedUDPPorts = [
      # Network File Share
        111
        2049
        4000
        4001
        4002
        20048
];
  };

}

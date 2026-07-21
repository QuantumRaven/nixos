{ config, pkgs, ... }:

{

  networking.firewall = {
     allowedTCPPorts = [
       3000 # Linkwarden
       3001 # Gitea
       2222 # Gitea SSH
       3456 # Vikunja
       8000 # Python Web Module
     ];
     allowedUDPPorts = [
     ];
  };

}

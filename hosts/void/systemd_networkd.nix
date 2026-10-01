{ config, pkgs, ... }:

{
  networking.useDHCP = false;

  networking.extraHosts = ''
    127.0.0.1 odin-project.lan
    127.0.0.1 career.lan
  '';

  systemd.network = {
    enable = true;
    networks."01-wan" = {
      dns = [ "8.8.8.8" ];
      matchConfig.Name = "eno1";
      address = [ "192.168.0.101/24" ];
      routes = [
        {
          Gateway = "192.168.0.1";
        }
      ];
    };
  };
}

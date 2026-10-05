{
  config,
  pkgs,
  lib,
  ...
}:

{

  services.caddy = {
    enable = true;
    virtualHosts."anticheat.lan".extraConfig = ''
      tls internal
    reverse_proxy localhost:8001
    '';
    virtualHosts."business.lan".extraConfig = ''
      tls internal
    reverse_proxy localhost:8003
    '';
    virtualHosts."career.lan".extraConfig = ''
      tls internal
    reverse_proxy localhost:8005
    '';
    virtualHosts."learning.lan".extraConfig = ''
      tls internal
    reverse_proxy localhost:8004
    '';
    virtualHosts."odin-project.lan".extraConfig = ''
      tls internal
    reverse_proxy localhost:8000
    '';

  };

}

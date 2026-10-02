{
  config,
  pkgs,
  lib,
  ...
}:

{

  services.caddy = {
    enable = true;
    virtualHosts."odin-project.lan".extraConfig = ''
      tls internal
    reverse_proxy localhost:8000
    '';
    virtualHosts."career.lan".extraConfig = ''
      tls internal
    reverse_proxy localhost:8001
    '';
    virtualHosts."linkwarden.lan".extraConfig = ''
      tls internal
    reverse_proxy localhost:8002
    '';
    virtualHosts."learning.lan".extraConfig = ''
      tls internal
    reverse_proxy localhost:8003
    '';
  };

}

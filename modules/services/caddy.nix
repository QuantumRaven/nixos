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
  };

}

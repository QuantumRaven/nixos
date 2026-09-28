{
  config,
  pkgs,
  lib,
  ...
}:

{

  services.caddy = {
    enable = true;
    virtualHosts."http://odin-project.lan".extraConfig = ''
    reverse_proxy localhost:8000
    '';
  };

}

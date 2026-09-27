{
  config,
  pkgs,
  lib,
  ...
}:

{

  services.caddy = {
    enable = true;
    virtualHosts."odin-project.local".extraConfig = ''
    reverse_proxy localhost:8000
    '';
  };

}

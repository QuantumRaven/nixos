{
  config,
  pkgs,
  lib,
  ...
}:

{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    guiAddress = "127.0.0.1:8384";
    group = "users";
    settings = {
      devices = {
        "andromeda" = {
          id = "D2M4SH5-RYRMBVF-OIC67Q2-6WWX3QL-HNHZ6CX-I5VS3YT-MZYNXKP-5PB5YQL";
        };
      };
        };
      };
}

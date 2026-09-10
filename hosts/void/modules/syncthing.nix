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
          id = "6HSE37A-2CDTMDV-GFB4Z5G-KDZWQPM-NCJZUAF-RVB5GBW-3E7FORB-JW4VDQW";
        };
      };
        };
        folders = {
          "share" = {
            id = "share";
            path = "/var/lib/syncthing/share_all";
            devices = [ "andromeda" ];
          };
      };
};
}

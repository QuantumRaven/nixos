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
        "Void" = {
          id = "3EXOZ3D-4FXMFMI-SH57TQJ-BSLMAFM-I3K647Z-KFDAUHX-DQMZSZJ-62PQ3AT";
        };
      };
      folders = {
        "syncthing" = {
          path = "/home/corvidae/syncthing";
          devices = [ "Void" ];
        };
      };
      };
    };
}

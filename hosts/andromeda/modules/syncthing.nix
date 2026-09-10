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
        "void" = {
          id = "ALYQNAN-X7SYWUL-ZHZV6AZ-ZVWGBWL-JJDMTQ6-DJLNUOP-2DGN4YN-ZU3PIAJ";
        };
      };
      folders = {
        "share" = {
          id = "share";
          path = "/var/lib/syncthing/share_all";
          devices = [ "void" ];
        };
      };
      };
};
}

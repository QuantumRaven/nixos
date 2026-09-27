{ config, pkgs, lib, ... }:

let
  isVoid = config.networking.hostName == "void";
  isAndromeda = config.networking.hostName == "andromeda";
in
{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    guiAddress = "127.0.0.1:8384";
    group = "users";
    user = "corvidae";
    configDir = "/home/corvidae/.config/syncthing";

    settings = {
      # BOTH devices must ALWAYS be declared here so Syncthing's module doesn't panic
      devices = {
        "andromeda" = {
          id = "C7TZOYX-TAGI4NC-V5AZ35V-JZTFPC3-GI5R64M-5LY6YSP-THW65WH-25NAQAO";
        };
        "void" = {
          id = "ALYQNAN-X7SYWUL-ZHZV6AZ-ZVWGBWL-JJDMTQ6-DJLNUOP-2DGN4YN-ZU3PIAJ";
        };
      };

      folders = {
        "share" = {
          id = "share";
          path = if isVoid then "/home/corvidae/storage/share_all" else "/home/corvidae/share_all";

          # When building on void, the remote peer is "andromeda".
          # When building on andromeda, the remote peer is "void".
          devices = if isVoid then [ "andromeda" ] else [ "void" ];
        };
      };
    };
  };
}

{
  config,
  pkgs,
  lib,
  ...
}:

let
  isVoid = config.networking.hostName == "void";
  isAndromeda = config.networking.hostName == "andromeda";
{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    guiAddress = "127.0.0.1:8384";
    group = "users";
    user = "corvidae";
    configDir = "/home/corvidae/.config/syncthing";
    settings = {
      devices = {
        # Only add Andromeda when building on Void
        "andromeda" = lib.mkIf isVoid {
          id = "C7TZOYX-TAGI4NC-V5AZ35V-JZTFPC3-GI5R64M-5LY6YSP-THW65WH-25NAQAO";
        };

        # Only add Void when building on Andromeda
        "void" = lib.mkIf isAndromeda {
          id = "ALYQNAN-X7SYWUL-ZHZV6AZ-ZVWGBWL-JJDMTQ6-DJLNUOP-2DGN4YN-ZU3PIAJ";
        };
      };
      folders = {
        "share" = {
          id = "share";
          # Dynamically set the correct local path based on the active device
          path = if isVoid then "/home/corvidae/storage/share_all" else "/home/corvidae/share_all";
          devices = [ "andromeda" "void" ];
        };
        };
      };
};
}

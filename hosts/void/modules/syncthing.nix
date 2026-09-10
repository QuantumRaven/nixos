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
    user = "corvidae";
    configDir = "/home/corvidae/.config/syncthing";
    settings = {
      devices = {
        "andromeda" = {
          id = "C7TZOYX-TAGI4NC-V5AZ35V-JZTFPC3-GI5R64M-5LY6YSP-THW65WH-25NAQAO";
        };
      };
      folders = {
        "share" = {
          id = "share";
          path = "/home/corvidae/storage/share_all";
          devices = [ "andromeda" ];
        };
        };
      };
};
}

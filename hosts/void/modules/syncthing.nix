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
    dataDir = "/home/corvidae/workspace/syncthing";
    # guiAddress = "127.0.0.1:8384";
  };
}

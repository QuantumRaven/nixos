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
          id = "PIN7JW6-2Z6ZCGT-QHK2TSQ-TGPNXZ3-AI3O6M2-URZBNZI-BB3GXQT-B7PEJAW";
        };
      };
      };
    };
}

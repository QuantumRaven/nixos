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
          id = "N5Z6FGP-QL6ITEG-4S5O4VQ-5GZLFH7-WAIOC6E-RE3U266-TA36WXZ-76CL2AW";
        };
      };
      };
    };
}

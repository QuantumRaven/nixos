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
    guiAddress = "0.0.0.0:8384";
    settings.gui = {
      user = "chloe";
      password = "$2b$05$7Ji.Wn/J9r76uKKK0DHZaul3ZY.uzoNubhsIdjkb2X69TUOy6XZwS";
    };
  };
}

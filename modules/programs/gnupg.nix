{
  config,
  pkgs,
  lib,
  ...
}:

{

  programs.gnupg = {
    package = pkgs.gnupg;
    agent = {
      enable = true;
      enableSSHSupport = true;
      enableExtraSocket = true;
      pinetryPackage = pkgs.pinentry-curses;
      settings = {
        default-cache-ttl = 1800; # 30 min passphrase cache
        max-cache-ttl = 7200; # absolute cap of 2 hours
        default-cache-ttl-ssh = 1800;
        max-cache-ttl-ssh = 7200;
      };
    };
    dirmngr.enable = true; # keyserver access daemon (gpg --recv-keys)
  };
}

{ config, lib, options, pkgs, ... }

{
  services.gitea = {
    enable = true;
  };
}

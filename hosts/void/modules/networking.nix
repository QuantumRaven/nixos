{ config, pkgs, ... }:

{
  networking.hostName = "void";
  networking = {
    networkmanager.enable = true;  # Easiest to use and most distros use this by default.
    nameservers = ["8.8.8.8"];
  };
}

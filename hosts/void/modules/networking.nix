{ config, pkgs, ... }:

{
  networking = {
    hostName = "void"; # Define your hostname.
    networkmanager.enable = true;  # Easiest to use and most distros use this by default.
    nameservers = ["8.8.8.8"];
}

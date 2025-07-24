{ config, pkgs, ... }:

{

  networking.hostName = "void"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  networking.nameservers = ["192.168.1.200" "1.0.0.1" "1.1.1.1"];

}

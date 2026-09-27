{ config, pkgs, ... }:

{
  networking.hostName = "void";
  networking = {
    # Disable network manager
    networkmanager.enable = false;
    # Disable DHCP client to avoid conflicts with systemd-networkd
    useDHCP = false;
    extraHosts = ''
      127.0.0.1 odin-project.local
    ''
  };

  # Enable systemd-networkd
  systemd.network = {
    enable = true;
    networks."01-wan" = {
      dns = ["8.8.8.8"];
      matchConfig.Name = "eno1"; # Change to your actual interface name
      address = [
        "192.168.0.101/24"
      ];
      routes = [
        {
          Gateway = "192.168.0.1";
        }
      ];
      };
  };
}

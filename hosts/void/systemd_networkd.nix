{ config, pkgs, ... }:

{
  networking.useDHCP = false;

  networking.extraHosts = ''
    127.0.0.1 odin-project.lan
    127.0.0.1 anticheat.lan
  '';

  systemd.network = {
    enable = true;
    networks."01-wan" = {
      dns = [ "1.1.1.1" ];
      matchConfig.Name = "eno1";
      address = [ "192.168.0.101/24" ];
      routes = [
        {
          Gateway = "192.168.0.1";
        }
      ];
    };
    # Define the virtual bridge device (br0)
    netdevs."br0" = {
      netdevConfig = {
        Kind = "bridge";
        Name = "br0";
      };
    };
    # Configure the bridge network (e.g., get IP via DHCP on the bridge)
    networks."br0" = {
      matchConfig.Name = "br0";
      networkConfig.DHCP = "ipv4";
      # If static IP address, configure below:
      # address = [ "192.168.0.202/24 "];
      # gateway = [ "192.168.0.1 " ];
      # dns = [ "1.1.1.1" ];
    };
    # Attach your physical interface (e.g. eno10) to the bridge
    networks."eno1" = {
      matchConfig.Name = "eno1"; # Replace with your actual physical interface name
      networkConfig.Bridge = "br0";
    };
  };
}

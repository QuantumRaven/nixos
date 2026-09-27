{ config, pkgs, lib, ... }:

let
  cfg = config.mySystem.networking;
in
{
  options.mySystem.networking = {
    backend = lib.mkOption {
      type = lib.types.enum [ "networkmanager" "systemd-networkd" ];
      default = "systemd-networkd";
      description = "Which networking backend to use.";
    };
  };

  config = lib.mkMerge [
    # Shared Firewall/Base Settings
    {
      networking.firewall.enable = true;
      services.resolved.enable = true;
    }

    # Systemd-Networkd Backend
    (lib.mkIf (cfg.backend == "systemd-networkd") {
      networking.useDHCP = false;
      systemd.network = {
        enable = true;
        networks."01-wan" = {
          dns = [ "8.8.8.8" ];
          matchConfig.Name = "eno1";
          address = [ "192.168.0.101/24" ];
          routes = [
            {
              Gateway = "192.168.0.1";
            }
          ];
        };
      };
    })

    # NetworkManager Backend
    (lib.mkIf (cfg.backend == "networkmanager") {
      networking.networkmanager.enable = true;
      networking.useDHCP = false;
      systemd.services.systemd-networkd-wait-online.enable = false;
      systemd.targets.network-online.enable = false;
    })
  ];
}

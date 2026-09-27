{ config, pkgs, lib, ... }:

let
  isVoid = config.networking.hostName == "void";
  isAndromeda = config.networking.hostName == "andromeda";
in
{
  config = lib.mkMerge [
    # --- SHARED SETTINGS FOR BOTH HOSTS ---
    {
      boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
      boot.supportedFilesystems = [ "ntfs" ];
    }

    # --- VOID CONFIG ---
    (lib.mkIf isVoid {
      boot.loader = {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
        timeout = 5;
      };
    })

    # --- ANDROMEDA CONFIG ---
    (lib.mkIf isAndromeda {
      boot.loader = {
        grub = {
          enable = true;
          device = "nodev";
          efiSupport = true;
        };
        efi.canTouchEfiVariables = true;
      };
    })
  ];
}

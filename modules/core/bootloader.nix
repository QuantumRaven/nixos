{ config, pkgs, lib, ... }:

let
  isVoid = config.networking.hostName == "void";
  isAndromeda = config.networking.hostName == "andromeda";
in
{
  # Shared kernel modules and filesystem support across both hosts
  boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
  boot.supportedFilesystems = [ "ntfs" ];

  boot.loader = lib.mkMerge [
    # Common bootloader setting
    {
      efi.canTouchEfiVariables = true;
    }

    # Settings specific to Void (systemd-boot)
    (lib.mkIf isVoid {
      systemd-boot.enable = true;
      timeout = 5;
    })

    # Settings specific to Andromeda (grub)
    (lib.mkIf isAndromeda {
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
      };
    })
  ];
}

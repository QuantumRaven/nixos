{ config, pkgs, lib, ... }:

let
  isVoid = config.networking.hostName == "void";
  isAndromeda = config.networking.hostName == "andromeda";
in
{
  # Shared kernel modules and filesystems apply to both
  boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
  boot.supportedFilesystems = [ "ntfs" ];

  # --- VOID CONFIGURATION ---
  boot.loader = lib.mkIf isVoid {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 5;
  };

  # --- ANDROMEDA CONFIGURATION ---
  boot.loader = lib.mkIf isAndromeda {
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
    };
    efi.canTouchEfiVariables = true;
  };
}

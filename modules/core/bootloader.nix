{ config, pkgs, lib, ... }:

let
  isVoid = config.networking.hostName == "void";
  isAndromeda = config.networking.hostName == "andromeda";
in
{
  # Shared settings that apply to both hosts safely
  boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
  boot.supportedFilesystems = [ "ntfs" ];

  # --- VOID CONFIG ---
  config = lib.mkIf isVoid {
    boot.loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 5;
    };
  };

  # --- ANDROMEDA CONFIG ---
  config = lib.mkIf isAndromeda {
    boot.loader = {
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
      };
      efi.canTouchEfiVariables = true;
    };
  };
}

{ config, pkgs, lib, ... }:

let
  isVoid = config.networking.hostName == "void";
  isAndromeda = config.networking.hostName == "andromeda";
in
{
  # Shared kernel modules and filesystem support across both hosts
  boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
  boot.supportedFilesystems = [ "ntfs" ];

  # Common EFI setting for both
  boot.loader.efi.canTouchEfiVariables = true;

  # Void Bootloader (systemd-boot)
  boot.loader.systemd-boot.enable = lib.mkIf isVoid true;
  boot.loader.timeout = lib.mkIf isVoid 5;

  # Andromeda Bootloader (GRUB) - completely isolated
  boot.loader.grub.enable = lib.mkIf isAndromeda true;
  boot.loader.grub.device = lib.mkIf isAndromeda "nodev";
  boot.loader.grub.efiSupport = lib.mkIf isAndromeda true;
}

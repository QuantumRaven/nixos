{ config, pkgs, ... }:

{
  boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "/dev/disk/by-uuid/45e02d7b-4110-41b1-a25f-6a7adab3a88a";
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];
}

{ config, pkgs, ... }:

{
  
  boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];

}

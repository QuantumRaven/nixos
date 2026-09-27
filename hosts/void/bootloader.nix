{ config, pkgs, ... }:

{
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 5;
  };

  # Keep your shared kernel modules/filesystems here or in core
  boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
  boot.supportedFilesystems = [ "ntfs" ];
}

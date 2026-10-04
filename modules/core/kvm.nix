{ config, pkgs, ... }:

# KVM/QEMU
{
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      runAsRoot = true;
      swtpm.enable = true;
    };
  };

  systemd.tmpfiles.rules = [
    "Z /home/corvidae/storage/virtualization/vdisks 2775 corvidae libvirtd -"
  ];

  programs.virt-manager.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  services.spice-vdagentd.enable = true;
  services.qemuGuest.enable = true;
}

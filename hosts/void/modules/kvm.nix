{ config, pkgs, ... }:

{

  virtualisation.libvirtd = {
    enable = true;
    qemu.runAsRoot = false;
    qemu.ovmf.enable = true;
    qemu.swtpm.enable = true;
    qemu.ovmf.packages = [ pkgs.OVMFFull.fd ];
  };

  programs.virt-manager.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  services.spice-vdagentd.enable = true;

}

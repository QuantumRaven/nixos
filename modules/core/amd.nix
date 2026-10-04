{
  config,
  pkgs,
  lib,
  ...
}:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true; # Crucial for Steam, Wine, and 32-bit games

    extraPackages = with pkgs; [
      rocmPackages.clr.icd # OpenCL support for ROCm / compute workloads
      libva-vdpau-driver # VA-API to VDPAU translation layer
      libvdpau-va-gl # VDPAU driver with OpenGL/VA-API backend
    ];

    # 32-bit OpenCL / Vulkan drivers
    extraPackages32 = with pkgs; [
      driversi686Linux.amdvlk
    ];
  };

  # Specific options for AMDGPU kernel driver management
  hardware.amdgpu = {
    initrd.enable = true; # Load amdgpu kernel module early in initrd for smoother splash/boot screen
  };
}

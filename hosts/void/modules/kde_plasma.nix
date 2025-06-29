{ 
  config,
  pkgs,
  lib,
  ...
}:

{

  services.xserver.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
#  services.displayManager.sddm.wayland.compositor = [ kwin ];
  services.xserver.xkb.layout = "us";

}

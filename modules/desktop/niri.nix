{ config, pkgs, ... }

{
  # Enable Niri
  programs.niri.enable = true;

  # Wayland essentials & graphic support
  hardware.graphics.enable = true;

  # Enable display manager for graphical logins
  services.displayManager.gdm.enable = true;

  # Recommended apps/utilities that pair well with Niri (launchers, bars, etc.)
  environment.systemPackages = with pkgs; [
    fuzzel # App launcher
    waybar # Status bar
    mako # Notification daemon
    wl-clipboard # Clipboard utilities
  ];
}

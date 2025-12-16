{
  config,
  pkgs,
  lib,
  ...
}:

{

 users.users.corvidae = {
   isNormalUser = true;
   description = "corvidae";
   extraGroups = [ "networkmanager" "wheel" ];
   shell = pkgs.fish;
   packages = with pkgs; [
   acpi
   asciinema
   aspell
   aspellDicts.en
   aspellDicts.en-computers
   ansible
   bat
   brave
   btop
   chromium
   dialog
   discord
   doggo
   duf
   fastfetch
   fd
   feh
   ffmpeg
   fish
   firefox
   flameshot
   fzf
   gimp
   gnucash
   gnupg
   grim
   jetbrains.idea-community-bin
   kdePackages.konsole
   keepassxc
   krita
   librewolf
   libreoffice
   lsd
   lshw
   mako
   mpv
   nfs-utils
   nwg-displays
   openssl
   pandoc
   pciutils
   pipewire
   pavucontrol
   podman-compose
   pritunl-client
   reco
   ripgrep
   sd
   slurp
   sshpass
   starship
   terminator
   texliveFull
   texmaker
   tree
   unzip
   uv
   wf-recorder
   wget2
   wl-clipboard-rs
   wofi
   xdg-desktop-portal
   xdg-desktop-portal-gtk
   xdg-desktop-portal-wlr
   xh
   xwayland
   zeal
   zed-editor
   zellij
   zola
   ];

   };

}

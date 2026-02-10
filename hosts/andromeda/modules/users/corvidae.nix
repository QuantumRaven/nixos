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
   cockatrice
   cosmic-reader
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
   mnemosyne
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
   signal-desktop
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
   xreader
   xwayland
   zeal
   zed-editor
   zellij
   zola
   ];

   };

}

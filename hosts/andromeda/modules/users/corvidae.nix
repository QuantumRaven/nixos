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
   alacritty
   asciinema
   aspell
   aspellDicts.en
   aspellDicts.en-computers
   ansible
   ansible-lint
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
   fzf
   gimp
   gnucash
   gnupg
   grim
   jetbrains.idea-community-bin
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
   obs-studio
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
   super-productivity
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

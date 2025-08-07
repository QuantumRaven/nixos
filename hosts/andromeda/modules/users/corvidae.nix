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
   discord
   doggo
   duf
   fastfetch
   fd
   ffmpeg
   fish
   firefox
   fzf
   gimp
   gnucash
   grim
   keepassxc
   librewolf
   lsd
   lshw
   mako
   mpv
   nfs-utils
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
   zellij
   zola
   ];

   };

}

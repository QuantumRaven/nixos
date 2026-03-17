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
   alacritty
   asciinema
   ansible
   appimage-run
   bat
   brave
   btop
   cockatrice
   discord
   dnsutils
   doggo
   du-dust
   duf
   fastfetch
   fd
   ffmpeg-full
   fish
   firefox
   fzf
   gimp
   gnucash
   grim
   handbrake
   joplin-desktop
   keepassxc
   lazygit
   libreoffice
   librewolf
   lsd
   lshw
   mpv
   nfs-utils
   nftables
   nushell
   obs-studio
   obs-studio-plugins.obs-backgroundremoval
   openssl
   pandoc
   pciutils
   pipewire
   pavucontrol
   podman-compose
   ripgrep
   sd
   slurp
   starship
   texliveFull
   texmaker
   tldr
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
   zed-editor
   zellij
   zoxide
   ];

   };

}

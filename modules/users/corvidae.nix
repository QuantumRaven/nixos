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
   asciinema
   ansible
   ansible-lint
   bat
   brave
   btop
   discord
   du-dust
   duf
   fastfetch
   fd
   ffmpeg
   fish
   fira-code-nerdfont
   firefox
   fzf
   ghostty
   gimp
   gnucash
   grim
   keepassxc
   librewolf
   lsd
   lshw
   mako
   mpv
   neovim
   openssl
   pandoc
   pciutils
   pipewire
   pavucontrol
   ripgrep
   sd
   slurp
   sshpass
   starship
   texliveFull
   unzip
   waybar
   wf-recorder
   wl-clipboard-rs
   wofi
   xdg-desktop-portal-wlr
   xh
   xwayland
   zellij
   ];

   };

}

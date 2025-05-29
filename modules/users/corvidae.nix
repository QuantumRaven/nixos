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
   grim
   keepassxc
   librewolf
   lsd
   lshw
   mpv
   neovim
   openssl
   pandoc
   pciutils
   pipewire
   pavucontrol
   sd
   slurp
   sshpass
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

{ pkgs, ... }:

{
  home.packages = with pkgs; [
  asciinema
  bat
  diff-so-fancy
  doggo
  dust
  duf
  fastfetch
  fd
  fuzzel
  fzf
  ghostty
  lazygit
  ripgrep
  ripgrep-all
  sd
  starship
  tldr
  xh
  zellij
  zoxide
  zed-editor
  ];
}

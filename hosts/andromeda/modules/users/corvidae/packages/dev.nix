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
  nushell
  ripgrep
  ripgrep-all
  sd
  starship
  thonny
  tldr
  xh
  zellij
  zoxide
  zed-editor
  ];
}

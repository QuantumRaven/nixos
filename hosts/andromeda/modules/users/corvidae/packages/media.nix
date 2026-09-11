{ pkgs, ... }:
{
  home.packages = with pkgs; [
  ffmpeg-full
  gimp
  grim
  handbrake
  inkscape
  imagemagick
  krita
  lmms
  mpv
  renpy
  slurp
  wf-recorder
  ];
}

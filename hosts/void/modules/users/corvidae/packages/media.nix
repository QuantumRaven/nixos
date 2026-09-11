{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ffmpeg-full
    gimp
    godot
    grim
    handbrake
    inkscape
    imagemagick
    kdePackages.kdenlive
    krita
    lmms
    mpv
    obs-studio
    obs-studio-plugins.obs-backgroundremoval
    renpy
    slurp
    wf-recorder
    yt-dlp
  ];
}

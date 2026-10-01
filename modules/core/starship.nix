{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      format = "$username$hostname $character";
      username = {
        style_user = "bold purple";
        show_always = true;
        format = "[$user]($style)";
        style_root = "bold bright-red";
        };
      hostname = {
        ssh_only = false;
        style = "bold diamond blue";
        format = "@[$hostname]($style)";
        disabled = false;
        };
      };
    };
}

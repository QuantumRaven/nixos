{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      format = "$username$character";
      username = {
        style_user = "bold purple";
        show_always = true;
        format = "[$user]($style)";
        style_root = "bold bright-red";
        };
      hostname = {
        ssh_only = false;
        style = "bod diamond blue";
        format = "@[$hostname]($style)";
        disabled = false;
        };
      shell = {
        bash_indicator = "bash ";
        nu_indicator = "nushell ";
        style = "cyan bold";
        disabled = false;
      };
      };
    };
}

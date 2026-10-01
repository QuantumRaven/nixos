{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      format = "$shlvl$shell$username$hostname$nix_shell$git_branch$git_commit$git_state$git_status$directory$jobs$cmd_duration$character";
      shlvl = {
        disabled = false;
        style = "bright-blue bold";
      };
      username = {
        style_user = "bold purple";
        show_always = true;
        format = "[$user]($style)";
        style_root = "bold bright-red";
        };
      };
    };
}

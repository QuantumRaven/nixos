{ 
  config,
  pkgs,
  lib,
  ...
}:

{

environment.variables.EDITOR = "nvim";

programs.neovim = {

    enable = true;
    defaultEditor = true;

    };

}

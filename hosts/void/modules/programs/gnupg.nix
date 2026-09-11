{
  config,
  pkgs,
  lib,
  ...
}:

{

  programs.gnupg = {
    agent.enable = true;
  };

}

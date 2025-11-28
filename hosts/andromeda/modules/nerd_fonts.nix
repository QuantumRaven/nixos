{ 
  config,
  pkgs,
  lib,
  ...
}:

{

  font.packages = with pkgs; [
    fira-code
    fira-code-symboles
  ];

}

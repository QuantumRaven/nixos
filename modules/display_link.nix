{ 
  config,
  pkgs,
  lib,
  ...
}:

{

  services.xserver.videoDrivers = [ "displaylink" "modesetting" ];

}

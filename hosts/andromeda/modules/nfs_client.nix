{ 
  config,
  pkgs,
  lib,
  ...
}:

{

  fileSystems."/home/corvidae/mounts/nfs/wd_red"
    device = "192.168.1.192:/wd_red";
    fsType = "nfs";

}

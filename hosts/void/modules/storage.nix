{
  config,
  pkgs,
  lib,
  ...
}:

{

  fileSystems."/mnt/nas" = {
    device = "/dev/disk/by-uuid/1ba00da0-a6d6-4f6b-9816-34bdc8375ac0";
    fsType = "ext4";
    options = [
      "users"
      "nofail"
      "exec"
    ];
  };

}

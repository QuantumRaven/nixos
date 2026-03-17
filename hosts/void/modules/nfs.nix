{
  config,
  pkgs,
  lib,
  ...
}:

{

  services.nfs.server = {
    enable = true;
    # Fixed rpc.statd port; for firewall
    lockdPort = 4001;
    mountdPort = 4002;
    statdPort = 4000;
    exports = ''
    /export 192.168.1.192(rw,fsid=0,no_subtree_check)
    /export/wd_red 192.168.1.192(rw,nohide,insecure,no_subtree_check)
    '';
    fileSystems."/export/wd_red" = {
    device = "/dev/sdb1";
    options = [ "bind" ];
    };

  };

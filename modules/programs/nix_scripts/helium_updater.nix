{ config, pkgs, ... }:

let
  heliumUpdater = pkgs.writeShellScriptBin "update_helium" ''
    export PATH="${pkgs.lib.makeBinPath [ pkgs.aria2 pkgs.curl pkgs.jq pkgs.gnugrep pkgs.gawk pkgs.coreutils ]}:$PATH"
    source ${./update_helium.sh}
  '';
in
  {
    environment.systemPackages = [ heliumUpdater ];
  }

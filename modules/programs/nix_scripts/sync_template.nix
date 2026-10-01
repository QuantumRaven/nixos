{ config, pkgs, ... }:

let
  # Nix evaluates the correct host path automatically at build time
  templateFilesDir = if config.networking.hostName == "void"
  then "/home/corvidae/storage/corvidae/workspace/github/quantumraven/template-files"
  else "/home/corvidae/workspace/github/quantumraven/template-files";

  # WriteShellBin packages bash script and checks it with shellcheck
  syncTemplateScript = pkgs.writeShellScriptBin "sync_template" ''
    # Ensure rsync is available
    export PATH="${pkgs.rsync}/bin:$PATH"

    # Export the evaluated host path so the bash script can read $TEMPLATE_FILES
    export TEMPLATE_FILES="${templateFilesDir}"

      # Source and execute your bash script
      source ${./bash_scripts/sync_template.sh}
    '';
  in
  {
    environment.systemPackages = [
      syncTemplateScript
    ];
  }

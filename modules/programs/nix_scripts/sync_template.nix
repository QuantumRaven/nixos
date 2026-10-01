{ config, pkgs, ... }:

let
  # Nix evaluates the correct host path automatically at build time
  templateFilesDir = if config.networking.hostName == "void"
  then "/home/corvidae/storage/corvidae/workspace/github/quantumraven/template-files"
  else "/home/corvidae/workspace/github/quantumraven/template-files";

  # WriteShellApplication packages bash script and checks it with shellcheck
  syncTemplateScript = pkgs.writeShellApplication {
    name = "sync_template";
    runtimeInputs = [pkgs.rsync];
    text = ''
      # Export the evaluated host path so the bash script can read $TEMPLATE_FILES
      export TEMPLATE_FILES="${templateFilesDir}"

      # Source and execute your bash script
      source ${./scripts/sync_template.sh}
    '';
  };
  in
  {
    environment.systemPackages = [
      syncTemplateScript
    ];
  }

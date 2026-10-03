{ config, pkgs, ...}:

{

  imports = [
    ./ssh.nix
  ];

  # Enable Hjem globally for corvidae
  hjem.users.corvidae = {
    enable = true;
    clobberFiles = true; # Safe transition from imperative dotfiles
  };

}

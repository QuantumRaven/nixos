{ config, pkgs, ...}:

{

  imports = [
    ./nvim_conf.nix
    ./ssh_conf.nix
    ./starship_conf.nix
  ];

  # Enable Hjem globally for corvidae
  hjem.users.corvidae = {
    enable = true;
    clobberFiles = true; # Safe transition from imperative dotfiles
  };

}

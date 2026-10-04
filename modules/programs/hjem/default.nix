{ config, pkgs, ...}:

{

  imports = [
    ./nvim.nix
    ./ssh.nix
    ./starship.nix
  ];

  # Enable Hjem globally for corvidae
  hjem.users.corvidae = {
    enable = true;
    clobberFiles = true; # Safe transition from imperative dotfiles
  };

}

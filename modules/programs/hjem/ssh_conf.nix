{ ... }:

{
  hjem.users.corvidae.files = {
    ".ssh/config" = {
      text = ''
        # Global defaults
        ServerAliveInterval 60
        ServerAliveCountMax 3
        ControlMaster auto
        ControlPath ~/.ssh/ctl-%C
        ControlPersist 10m

        ######
        # Git
        ######
        # Codeberg with dedicated identity
        Host codeberg.com

        # GitHub with dedicated identity
        Host github.com
          HostName github.com
          User git
          IdentityFile ~/.ssh/corvidae
          IdentitiesOnly yes

        ###########
        # Homelab
        ###########
        Host andromeda_eth
          HostName 192.168.0.125
          User corvidae
          IdentityFile ~/.ssh/corvidae
          IdentitiesOnly yes

        Host andromeda_wifi
          HostName 192.168.0.113
          User corvidae
          IdentityFile ~/.ssh/corvidae
          IdentitiesOnly yes

        ########################
        # Ugly Baby - J. Harris
        ########################
        Host glad-raven.tinygiant.dev
          HostName 15.204.155.5
          User root
          IdentityFile ~/.ssh/corvidae
          IdentitiesOnly yes

        #############
        # Verta Host
        #############
      '';
    };
  };
}

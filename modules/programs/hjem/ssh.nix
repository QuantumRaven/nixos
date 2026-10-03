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

        # GitHub with dedicated identity
        Host github.com
          HostName github.com
          User git
          IdentityFile ~/.ssh/corvidae
          IdentitiesOnly yes
      ''
    };
  };
}

{ config, pkgs, ... }:

{
  services.gitea = {
    enalbe = true;
    database.type = "sqlite";
  };

}

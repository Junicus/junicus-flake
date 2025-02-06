{ config, lib, pkgs, ...}: 
with lib;
let
  cfg = config.my-containers.gitea;
in 
{
  options.my-containers.gitea = {
    enable = mkEnableOption "the gitea container";
  };

  config = mkIf cfg.enable {
    virtualisation.oci-containers.containers."gitea" = {
      autoStart = true;
      image = "gitea/gitea:latest";
      environment = {
        USER_UID = "1000";
        USER_GID = "1000";
      };
      volumes = [
        "/home/junicus/Data/gitea:/data"
        #"/etc/timezone:/etc/timezone:ro"
        #"/etc/localtime:/etc/localtime:ro"
      ];
      ports = [
        "3000:3000"
        "222:22"
      ];
    };
  };
}


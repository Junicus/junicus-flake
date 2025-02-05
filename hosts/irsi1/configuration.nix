{ pkgs, stateVersion, hostname, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos/modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  services.openssh.enable = true;

  systemd.targets = {
    sleep.enable = false;
    suspend.enable = false;
    hibernate.enable = false;
    hybrid-sleep.enable = false;
  };

  #my-containers.gitea = {
  #  enable = true;
  #};

  system.stateVersion = stateVersion;
}

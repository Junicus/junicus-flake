{ pkgs, lib, ... }: {
  virtualisation = {
    podman = {
      enable = true;

      dockerCompat = true;
      dockerSocket.enable = true;

      defaultNetwork.settings.dns_enabled = true;
    };

    environment.systemPackages = with pkgs; [
      podman-compose
      podman-tui

      docker-compose
      lazidocker
    ];
  };
}

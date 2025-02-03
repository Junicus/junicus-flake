{ pkgs, lib, ... }: {
  virtualisation = {
    podman = {
      enable = true;
    };
  };
}

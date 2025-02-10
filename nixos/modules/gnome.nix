{ pkgs, ... }: {
  services = {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
    };

    xrdp = {
      enable = true;
      defaultWindowManager = "${pkgs.gnome.gnome-session}/bin/gnome-session";
      openFirewall = true;
    };
  };
}

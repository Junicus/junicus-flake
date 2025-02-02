{ pkgs, inputs, ... }: {
  imports = [ inputs.stylix.homeManagerModules.stylix ];

  home.packages = with pkgs; [
    noto-fonts-emoji
    font-awesome
    (nerdfonts.override { fonts = [ "FiraCode" "CascadiaCode" "JetBrainsMono" ]; })
  ];

  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    targets = {
      waybar.enable = false;
      hyprland.enable = false;
      wofi.enable = false;
    };

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };

    fonts = {
      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
      };
      monospace = {
        name = "JetBrainsMono Nerd Font";
        package = pkgs.nerdfonts.override {fonts = ["JetBrainsMono"]; };
      };
      sansSerif = {
        name = "JetBrainsMono Nerd Font";
        package = pkgs.nerdfonts.override {fonts = ["JetBrainsMono"]; };
      };
      serif = {
        name = "JetBrainsMono Nerd Font";
        package = pkgs.nerdfonts.override {fonts = ["JetBrainsMono"]; };
      };

      sizes = {
        terminal = 13;
        applications = 11;
      };
    };

    iconTheme = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };

    image = pkgs.fetchurl {
      url = "https://codeberg.org/lunik1/nixos-logo-gruvbox-wallpaper/raw/branch/master/png/gruvbox-dark-rainbow.png";
      sha256 = "036gqhbf6s5ddgvfbgn6iqbzgizssyf7820m5815b2gd748jw8zc";
    };
  };
}

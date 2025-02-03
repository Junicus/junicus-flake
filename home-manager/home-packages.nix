{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # CLI utils
    brightnessctl
    btop
    fzf
    microfetch
    playerctl
    ripgrep
    wget

    # Coding Stuff
    nodejs
  ];
}

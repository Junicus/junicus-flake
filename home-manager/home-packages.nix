{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # CLI utils
    btop
    fzf
    microfetch
    ripgrep
    wget

    # Coding Stuff
    nodejs
  ];
}

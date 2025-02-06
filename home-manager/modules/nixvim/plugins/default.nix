{
  imports = [
    ./alpha.nix
    ./neo-tree.nix
    ./lsp.nix
    ./telescope.nix
    ./which-key.nix
    ./indent-blankline.nix
    ./lualine.nix
    ./bufferline.nix
    ./tmux-navigator.nix
  ];

  programs.nixvim = {
    colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "mocha";
      };
    };

    plugins = {
      lz-n.enable = true;

      web-devicons.enable = true;

      nvim-autopairs.enable = true;

      comment.enable = true;
      
#      colorizer = {
#        enable = true;
#        settings.user_default_options.names = false;
#      };
    };
  };
}

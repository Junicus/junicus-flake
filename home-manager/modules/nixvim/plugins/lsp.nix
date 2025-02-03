{
  programs.nixvim = {
    plugins = {
      lsp-format = {
        enable = true;
        lspServersToEnable = "all";
      };

      lsp = {
        enable = true;
        inlayHints = true;
        keymaps = {
          silent = true;
          diagnostic = {
            # Navigate in diagnostics
            "<leader>k" = "goto_prev";
            "<leader>j" = "goto_next";
          };
          lspBuf = {
            gd = "definition";
            gD = "reference";
            gt = "type_definition";
            gi = "implementation";
            K = "hover";
            "<F2>" = "rename";
          };
        };
        servers = {
#          nixd = {
#            enable = true;
#            settings = {
#              formatting.command = "nixpkgs-fmt";
#            };
#          };
          nil_ls.enable = true;
        };
      };
    };
  };
}

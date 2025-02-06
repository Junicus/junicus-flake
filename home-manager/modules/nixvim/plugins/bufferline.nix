{
  programs.nixvim.plugins.bufferline = {
    enable = true;
    settings.options = {
      number = "none";
      diagnostics = "nvim_lsp";
      separator_style = "slope";
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<A-l>";
      action = "<Cmd>BufferLineCycleNext<CR>";
      options.desc = "Next Buffer";
    }
    {
      mode = "n";
      key = "<A-h>";
      action = "<Cmd>BufferLineCyclePrev<CR>";
      options.desc = "Previous Buffer";
    }
  ];
}

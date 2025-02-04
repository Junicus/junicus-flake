{
  programs.nixvim.plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>fb" = {
        action = "buffers";
        options.desc = "Telescope list buffers";
      };
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Telescope find files";
      };
      "<leader>fg" = {
        action = "live_grep";
        options.desc = "Telescope live grep";
      };
      "<leader>fh" = {
        action = "oldfiles";
        options.desc = "Telescope oldfiles";
      };
    };
  };
}

{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    mouse = true;
    escapeTime = 0;
    keyMode = "vi";
    terminal = "screen-256color";
    extraConfig = ''
    '';
    plugins = with pkgs; [
      tmuxPlugins.catppuccin
      tmuxPlugins.vim-tmux-navigator
    ];
  };
}

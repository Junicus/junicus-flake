{ inputs, ... }: {
  imports = [ 
    inputs.nixvim.homeManagerModules.nixvim
    ./options.nix
    ./keymappings.nix
    ./plugins
    ./completion.nix
    ./autocommands.nix
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    # nixpkgs.useGlobalPackages = true;
    performance = {
      combinePlugins = {
        enable = true;
        standalonePlugins = [
        ];
      };
      byteCompileLua.enable = true;
    };

    viAlias = true;
    vimAlias = true;

    luaLoader.enable = true;
  };
}

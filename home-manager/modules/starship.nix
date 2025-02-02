{ pkgs, lib, ... }: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;
      format = lib.concatStrings [
	"$directory"
	"[](fg:red bg:green)"
	"$git_branch"
	"$git_status"
	"[](fg:green bg:surface0)"
	"$time"
	"[ ](fg:surface0)"
	"$line_break$character"
      ];
      palette = "catppuccin_mocha";
      palettes = {
        catppuccin_mocha = {
		rosewater = "#f5e0dc";
		flamingo = "#f2cdcd";
		pink = "#f5c2e7";
		mauve = "#cba6f7";
		red = "#f38ba8";
		maroon = "#eba0ac";
		peach = "#fab387";
		yellow = "#f9e2af";
		green = "#a6e3a1";
		teal = "#94e2d5";
		sky = "#89dceb";
		sapphire = "#74c7ec";
		blue = "#89b4fa";
		lavender = "#b4befe";
		text = "#cdd6f4";
		subtext1 = "#bac2de";
		subtext0 = "#a6adc8";
		overlay2 = "#9399b2";
		overlay1 = "#7f849c";
		overlay0 = "#6c7086";
		surface2 = "#585b70";
		surface1 = "#45475a";
		surface0 = "#313244";
		base = "#1e1e2e";
		mantle = "#181825";
		crust = "#11111b";
	};
      };
      directory = {
	style = "bg:red fg:base";
	format = "[ $path ]($style)";
        truncation_symbol = "../";
	truncation_length = 3;
      };
      line_break = {
        disabled = false;
      };
      git_branch = {
        symbol = "";
	style = "bg:green";
	format = "[[ $symbol $branch ](bg:green fg:base)]($style)";
      };
      git_status = {
	style = "bg:green";
	format = "[[($all_status$ahead_behind )](bg:green fg:base)]($style)";
      };
      time = {
        disabled = false;
	use_12hr = true;
	style = "bg:surface0";
        format = "[[  $time ](fg:subtext0 bg:surface0)]($style)";
      };
      character = {
        disabled = false;
	success_symbol = "[](bold fg:green)";
	error_symbol = "[](bold fg:red)";
	vimcmd_symbol = "[](bold fg:green)";
	vimcmd_replace_one_symbol = "[](bold fg:mauve)";
	vimcmd_replace_symbol = "[](bold fg:mauve)";
	vimcmd_visual_symbol = "[](bold fg:mauve)";
      };
    };
  };
}

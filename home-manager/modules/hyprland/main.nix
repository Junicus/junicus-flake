{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      "$mainMod" = "SUPER";
      "$terminal" = "alacritty";
      "$fileManager" = "$terminal -e sh -c 'ranger'";
      "$menu" = "wofi";

      general = {
        gaps_in = 0;
	gaps_out = 0;

	border_size = 5;
	
#	"col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
#	"col.inactive_border" = "rgba(3c3836ff)";

	resize_on_border = true;

	allow_tearing = false;
	layout = "master";
      };

      decoration = {
        rounding = 0;

	active_opacity = 1.0;
	inactive_opacity = 1.0;

	shadow = {
	  enabled = false;
	};

	blur = {
	  enabled = false;
	};
      };

      animations = {
        enabled = false;
      };

      input = {
        kb_layout = "us";
	kb_options = "grp:caps_toggle";
      };

      gestures = {
        workspace_swipe = true;
	workspace_swipe_invert = false;
	workspace_swipe_forever = true;
      };

      dwindle = {
        pseudotile = true;
	preserve_split = true;
      };

      master = {
        new_status = "slave";
	new_on_top = true;
	mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
	disable_hyprland_logo = true;
      };

      windowrulev2 = [
        "suppressevent maximize, class:.*"
	"nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];

      workspace = [
        "w[tv1], gapsout:0, gapsin:0"
        "f[1], gapsout:0, gapsin:0"
      ];
    };
  };
}

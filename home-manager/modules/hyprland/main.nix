{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "$terminal -e sh -c 'ranger'";
      "$menu" = "wofi";
      monitor = ",preferred,auto,1";

      exec-once = [
        "waybar"
      ];

      general = {
        gaps_in = 2;
	gaps_out = 4;

	border_size = 2;
	
	"col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
	"col.inactive_border" = "rgba(3c3836ff)";

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
    };
  };
}

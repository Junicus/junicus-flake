{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    pavucontrol
  ];

  home.file."${config.xdg.configHome}/waybar/mocha.css" = {
    source = ./mocha.css;
  };

  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 36;
        spacing = 4;
        modules-left = ["hyprland/workspaces"];
        modules-center = ["hyprland/window"];
        modules-right = ["pulseaudio" "network" "custom/logout_menu"];

        "hyprland/workspaces" = {
          format= "{icon}";
          format-icons= {
              "1"= "󰲠";
              "2"= "󰲢";
              "3"= "󰲤";
              "4"= "󰲦";
              "5"= "󰲨";
              "6"= "󰲪";
              "7"= "󰲬";
              "8"= "󰲮";
              "9"= "󰲰";
              "10"= "󰿬";
              "special"= "";

              # "active": "",
              # "default": "",
              # "empty": ""
          };
          show-special= true;
          persistent-workspaces= {
              "*"= 10;  
          };
        };

        "hyprland/window"= {
          format= "{class}";
          max-length= 20;
          rewrite= {
            ""= "<span foreground= '#458588'></span> hyprland";
            "~"= " terminal";
            "com.mitchellh.ghostty"= "ghostty";
          };
        };

        "pulseaudio"= {
          format = "{volume}% {icon} {format_source}";
          format-bluetooth = "{volume}% {icon} {format_source}";
          format-bluetooth-muted = " {icon} {format_source}";
          format-icons = {
            car = "";
            default = [ "" "" "" ];
            handsfree = "";
            headphones = "";
            headset = "";
            phone = "";
            portable = "";
          };
          format-muted = " {format_source}";
          format-source = "{volume}% ";
          format-source-muted = "";
          on-click = "pavucontrol";
        };

        "network"= {
          format= "󰤭";
          format-wifi= "{icon}({signalStrength}%){essid}";
          format-icons= [ "󰤯" "󰤟" "󰤢" "󰤥" "󰤨" ];
          format-disconnected= "󰤫 Disconnected";
          tooltip-format= "wifi <span color='#ee99a0'>off</span>";
          tooltip-format-wifi="SSID: {essid}({signalStrength}%), {frequency} MHz\nInterface: {ifname}\nIP: {ipaddr}\nGW: {gwaddr}\n\n<span color='#a6da95'>{bandwidthUpBits}</span>\t<span color='#ee99a0'>{bandwidthDownBits}</span>\t<span color='#c6a0f6'>󰹹{bandwidthTotalBits}</span>";
          tooltip-format-disconnected= "<span color='#ed8796'>disconnected</span>";
          # "format-ethernet"= "󰈀 {ipaddr}/{cidr}";
          # "format-linked"= "󰈀 {ifname} (No IP)";
          # "tooltip-format-ethernet"="Interface: {ifname}\nIP: {ipaddr}\nGW: {gwaddr}\nNetmask: {netmask}\nCIDR: {cidr}\n\n<span color='#a6da95'>{bandwidthUpBits}</span>\t<span color='#ee99a0'>{bandwidthDownBits}</span>\t<span color='#c6a0f6'>󰹹{bandwidthTotalBits}</span>";
          max-length= 35;
          on-click= "fish -c wifi_toggle";
          on-click-right= "iwgtk";
        };

        "custom/logout_menu"= {
          return-type= "json";
          exec= "echo '{ \"text\":\"󰐥\", \"tooltip\": \"logout menu\" }'";
          interval= "once";
          on-click= "fish -c wlogout_uniqe";
        };
      };

      #mainBar = {
      #  layer = "top";
      #  position = "bottom";
      #  height = 30;
      #  modules-left = ["hyprland/workspaces"];
      #  modules-center = ["hyprland/window"];
      #  modules-right = ["pulseaudio" "battery" "clock" "tray"];
      #  "hyprland/workspaces" = {
      #    disable-scroll = true;
      #    show-special = true;
      #    special-visible-only = true;
      #    all-outputs = false;
      #    format = "{icon}";
      #    format-icons = {
      #      "1" = "";
      #      "2" = "";
      #      "3" = "";
      #      "4" = "";
      #      "5" = "";
      #      "6" = "";
      #      "7" = "";
      #      "8" = "";
      #      "9" = "";
      #      "magic" = "";
      #    };
#
#          persistent-workspaces = {
#            "*" = 9;
#          };
#        };
#
#        "pulseaudio" = {
 #         format = "{icon}  {volume}%";
 #         format-bluetooth = "{icon} {volume}% ";
 #         format-muted = "";
 #         format-icons = {
 #           "headphones" = "";
 #           "handsfree" = "";
 #           "headset" = "";
 #           "phone" = "";
 #           "portable" = "";
 #           "car" = "";
 #           "default" = ["" ""];
 #         };
 #         on-click = "pavucontrol";
 #       };

  #      "battery" = {
  #        states = {
  #          warning = 30;
  #          critical = 1;
  #        };
  #        format = "{icon}  {capacity}%";
  #        format-charging = " {capacity}%";
  #        format-alt = "{time} {icon}";
  #        format-icons = ["" "" "" "" ""];
  #      };

 #       "clock" = {
 #         format = "{:%Y-%m-%d - %I:%M %p}";
 #         format-alt = "{:%A, %B %d at %I:%M %p}";
 #       };

  #      "tray" = {
  #        icon-size = 14;
  #        spacing = 1;
  #      };
  #    };
    };
  };
}

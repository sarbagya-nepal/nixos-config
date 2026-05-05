{ ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      monitor = ",1920x1080@144,auto,1";

      xwayland = {
        force_zero_scaling = true;
      };

      "$terminal" = "ghostty";
      "$fileManager" = "dolphin";
      "$menu" = "rofi -show drun";

      exec-once = [
        "qs"
        "awww-daemon"
        "awww img ~/Pictures/wallpapers/a_planet_in_the_sky.jpg"
      ];

      env = [
        "XCURSOR_SIZE,12"
        "HYPRCURSOR_SIZE,12"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 5;
        border_size = 0;
        "col.active_border" = "rgb(8a9a7b)";
        "col.inactive_border" = "rgb(090e13)";
        resize_on_border = false;
        allow_tearing = false;
        layout = "master";
      };

      decoration = {
        rounding = 10;
        rounding_power = 5;
        active_opacity = 1.0;
        inactive_opacity = 0.9;

        shadow = {
          enabled = false;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };

        blur = {
          enabled = true;
          size = 5;
          passes = 3;
          vibrancy = 0.1696;
        };
      };

      animations = {
        enabled = true;

        bezier = [
          "easeOutQuint,0.23,1,0.32,1"
          "easeInOutCubic,0.65,0.05,0.36,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
        ];

        animation = [
          "global,1,10,default"
          "border,1,5.39,easeOutQuint"
          "windows,1,4.79,easeOutQuint"
          "windowsIn,1,4.10,easeOutQuint,slide"
          "windowsOut,1,1.49,linear,slide"
          "fadeIn,1,1.73,almostLinear"
          "fadeOut,1,1.46,almostLinear"
          "fade,1,3.03,quick"
          "layers,1,3.81,easeOutQuint"
          "layersIn,1,4.00,easeOutQuint,fade"
          "layersOut,1,1.50,linear,fade"
          "fadeLayersIn,1,1.79,almostLinear"
          "fadeLayersOut,1,1.39,almostLinear"
          "workspaces,1,1.50,easeOutQuint,slide"
          "workspacesIn,1,1.30,easeOutQuint,slide"
          "workspacesOut,1,1.30,easeOutQuint,slide"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master.new_status = "slave";

      misc = {
        force_default_wallpaper = -1;
        disable_hyprland_logo = true;
      };

      input = {
        sensitivity = 0.0;
        kb_layout = "us";
        force_no_accel = 1;
        follow_mouse = 1;
        accel_profile = "flat";

        touchpad.natural_scroll = true;
      };

      gesture = [
        "3, horizontal, workspace"
        "4, horizontal, workspace"
      ];

      device = {
        name = "syna7db5:01-06cb:cd41-touchpad";
        sensitivity = 0;
        scroll_factor = 0.2;
      };

      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, RETURN, exec, $terminal"
        "$mainMod, B, exec, firefox"
        "$mainMod SHIFT, S, exec, hyprshot -m region output --clipboard-only"

        "$mainMod, Q, killactive,"
        "$mainMod SHIFT, Q, exit,"
        "$mainMod SHIFT, RETURN, exec, $fileManager"
        "$mainMod, SPACE, togglefloating,"
        "$mainMod, D, exec, $menu"
        "$mainMod, F, fullscreen,"

        "$mainMod, h, movefocus, l"
        "$mainMod, l, movefocus, r"
        "$mainMod, k, movefocus, u"
        "$mainMod, j, movefocus, d"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"

        "$mainMod, 0, togglespecialworkspace, magic"
        "$mainMod SHIFT, 0, movetoworkspace, special:magic"

        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      bindel = [
        ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
        ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 2%+"
        ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 2%-"
      ];

      bindl = [
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
      ];
    };
  };
}

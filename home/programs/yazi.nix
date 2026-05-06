{ config, pkgs, ... }:

{
  programs.yazi = {
    enable = true;

    settings = {
      manager = {
        show_hidden = false;
        sort_by = "natural";
        sort_dir_first = true;
        linemode = "size";
      };

      preview = {
        tab_size = 2;
      };
    };

    theme = {
      mgr = {
        # Base
        cwd = { fg = "#a0a8cd"; bold = true; };

        # Selection / hover (use blue accent)
        hovered = { fg = "#11121d"; bg = "#7199ee"; bold = true; };
        preview_hovered = { underline = true; };

        # Find
        find_keyword = { fg = "#d7a65f"; italic = true; };
        find_position = { fg = "#a485dd"; italic = true; };

        # Markers
        marker_copied = { fg = "#95c561"; bg = "#95c561"; };
        marker_cut = { fg = "#ee6d85"; bg = "#ee6d85"; };

        # Tabs (very minimal contrast)
        tab_active = { fg = "#11121d"; bg = "#a0a8cd"; bold = true; };
        tab_inactive = { fg = "#212234"; bg = "#06080a"; };
        tab_width = 1;

        # Borderless feel
        border_symbol = " ";
      };

      status = {
        # Remove visual clutter
        separator_open = "";
        separator_close = "";
        separator_style = { fg = "#212234"; bg = "#06080a"; };

        # Modes (subtle but readable)
        mode_normal = { fg = "#11121d"; bg = "#7199ee"; bold = true; };
        mode_select = { fg = "#11121d"; bg = "#d7a65f"; bold = true; };
        mode_unset = { fg = "#11121d"; bg = "#ee6d85"; bold = true; };
      };

      input = {
        border = { fg = "#212234"; };
        title = { fg = "#7199ee"; };
        value = { fg = "#a0a8cd"; };
        selected = { bg = "#212234"; };
      };

      completion = {
        border = { fg = "#212234"; };
        active = { bg = "#7199ee"; fg = "#11121d"; };
        inactive = { fg = "#a0a8cd"; };
      };

      tasks = {
        border = { fg = "#212234"; };
        title = { fg = "#7199ee"; };
        hovered = { bg = "#212234"; };
      };

      which = {
        mask = { bg = "#06080a"; };
        cand = { fg = "#38a89d"; };
        rest = { fg = "#212234"; };
        desc = { fg = "#a485dd"; };
        separator = "  ";
      };

      help = {
        on = { fg = "#38a89d"; };
        run = { fg = "#a485dd"; };
        desc = { fg = "#a0a8cd"; };
        hovered = { bg = "#212234"; };
        footer = { fg = "#212234"; bg = "#06080a"; };
      };
    };

    keymap = {
      manager.prepend_keymap = [
        { on = [ "q" ]; run = "quit"; }
        { on = [ "h" ]; run = "leave"; }
        { on = [ "l" ]; run = "enter"; }
        { on = [ "j" ]; run = "down"; }
        { on = [ "k" ]; run = "up"; }
        { on = [ "gg" ]; run = "top"; }
        { on = [ "G" ]; run = "bottom"; }
      ];
    };
  };
}

{ ... }:

{
  programs.nixvim.plugins.fidget = {
    enable = true;
    settings = {
      progress = {
        display = {
          done_icon = "✓";
          progress_icon = {
            pattern = "dots";
            period = 1;
          };
        };
      };
      notification = {
        window = {
          winblend = 0;
          border = "rounded";
          max_width = 50;
          max_height = 10;
          x_padding = 1;
          y_padding = 1;
          align = "bottom";
          relative = "editor";
        };
        view = {
          stack_upwards = true;
          icon_separator = " ";
          group_separator = "---";
          group_separator_hl = "Comment";
        };
      };
    };
  };
}

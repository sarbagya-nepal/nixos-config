{ config, lib, pkgs, ... }:

{
  programs.nixvim = {
    plugins.lualine = {
      enable = true;
      settings = {
        options = {
          theme = "auto";
          globalstatus = true;
          section_separators = {
            left = "";
            right = "";
          };
          component_separators = {
            left = "";
            right = "";
          };
          disabled_filetypes = {
            statusline = [ "dashboard" "alpha" "starter" ];
          };
        };


        inactive_sections = {
          lualine_a = [];
          lualine_b = [];
          lualine_c = [ "filename" ];
          lualine_x = [ "location" ];
          lualine_y = [];
          lualine_z = [];
        };
      };
    };
  };
}

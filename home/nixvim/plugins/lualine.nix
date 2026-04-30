{ ... }:
{
  programs.nixvim = {
    plugins.lualine = {
      enable = true;
      settings = {
        options = {
          theme = "tokyonight";
          globalstatus = true;
        };
        sections = {
          lualine_a = [
            {
              __unkeyed-1 = "mode";
              fmt.__raw = ''
                function(str) return str:sub(1,1) end
              '';
            }
          ];
          lualine_b = [
            {
              __unkeyed-1 = "branch";
              icon = "";
            }
            {
              __unkeyed-1 = "diff";
              symbols = {
                added = " ";
                modified = " ";
                removed = " ";
              };
            }
            {
              __unkeyed-1 = "diagnostics";
              sources = [ "nvim_lsp" ];
              symbols = {
                error = " ";
                warn = " ";
                info = " ";
                hint = " ";
              };
            }
          ];
          lualine_c = [
            {
              __unkeyed-1 = "filename";
              path = 1;
              symbols = {
                modified = "  ";
                readonly = "  ";
                unnamed = "  ";
              };
            }
          ];
          lualine_x = [
            {
              __unkeyed-1 = "encoding";
            }
            {
              __unkeyed-1 = "fileformat";
              symbols = {
                unix = "";
                dos = "";
                mac = "";
              };
            }
            {
              __unkeyed-1 = "filetype";
              icon_only = true;
            }
          ];
          lualine_y = [ "progress" ];
          lualine_z = [ "location" ];
        };
      };
    };
  };
}

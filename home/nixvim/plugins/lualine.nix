{ config, lib, pkgs, ... }:

{
  programs.nixvim = {
    plugins.lualine = {
      enable = true;
      
      settings = {
        options = {
          theme = "auto";
          globalstatus = true;  # Single statusline for all windows (NvChad style)
          
          # NvChad uses block-style separators or none
          section_separators = {
            left = "";
            right = "";
          };
          component_separators = {
            left = "";
            right = "";
          };
          
          # Disable for certain filetypes
          disabled_filetypes = {
            statusline = [ "dashboard" "alpha" "starter" ];
          };
        };

        sections = {
          # lualine_a: Mode indicator (NvChad shows NORMAL/INSERT/etc with colored bg)
          lualine_a = [
            {
              __unkeyed-1 = "mode";
              fmt = "string.lower";  # NvChad shows lowercase mode names
              color = {
                gui = "bold";
              };
            }
          ];

          # lualine_b: Git info
          lualine_b = [
            {
              __unkeyed-1 = "branch";
              icon = "";
            }
            {
              __unkeyed-1 = "diff";
              symbols = {
                added = " ";
                modified = " ";
                removed = " ";
              };
            }
            {
              __unkeyed-1 = "diagnostics";
              sources = [ "nvim_diagnostic" ];
              symbols = {
                error = " ";
                warn = " ";
                info = " ";
                hint = " ";
              };
            }
          ];

          # lualine_c: Filename (centered with spacer)
          lualine_c = [
            {
              __unkeyed-1.__raw = ''
                function()
                  return "%="
                end
              '';
            }
            {
              __unkeyed-1 = "filename";
              file_status = true;      # Show readonly/modified
              newfile_status = true;   # Show [New] for new files
              path = 1;                # 0=filename, 1=relative, 2=absolute
              symbols = {
                modified = " ";
                readonly = " ";
                unnamed = "[No Name]";
                newfile = "[New]";
              };
            }
          ];

          # lualine_x: LSP info (NvChad shows LSP progress here)
          lualine_x = [
            # LSP server names
            {
              __unkeyed-1.__raw = ''
                function()
                  local msg = ""
                  local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                  local clients = vim.lsp.get_active_clients()
                  if next(clients) == nil then
                    return msg
                  end
                  for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                      return client.name
                    end
                  end
                  return msg
                end
              '';
              icon = " ";
              color = { gui = "bold"; };
            }
            # LSP diagnostics count (errors/warnings)
            {
              __unkeyed-1.__raw = ''
                function()
                  local diagnostics = vim.diagnostic.get(0)
                  local count = { 0, 0, 0, 0 } -- E, W, I, H
                  for _, diagnostic in ipairs(diagnostics) do
                    count[diagnostic.severity] = count[diagnostic.severity] + 1
                  end
                  local result = {}
                  if count[vim.diagnostic.severity.ERROR] > 0 then
                    table.insert(result, "E:" .. count[vim.diagnostic.severity.ERROR])
                  end
                  if count[vim.diagnostic.severity.WARN] > 0 then
                    table.insert(result, "W:" .. count[vim.diagnostic.severity.WARN])
                  end
                  return table.concat(result, " ")
                end
              '';
            }
          ];

          # lualine_y: CWD / folder name
          lualine_y = [
            {
              __unkeyed-1.__raw = ''
                function()
                  local cwd = vim.fn.getcwd()
                  local home = os.getenv("HOME")
                  if home and cwd:find(home, 1, true) == 1 then
                    cwd = "~" .. cwd:sub(#home + 1)
                  end
                  return cwd
                end
              '';
              icon = "󰉋 ";
            }
          ];

          # lualine_z: Cursor position (line:col)
          lualine_z = [
            {
              __unkeyed-1 = "location";
              color = { gui = "bold"; };
            }
            {
              __unkeyed-1 = "progress";
              color = { gui = "bold"; };
            }
          ];
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

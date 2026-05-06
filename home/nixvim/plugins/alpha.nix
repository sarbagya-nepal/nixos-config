{ config, lib, pkgs, ... }:

{
  plugins.alpha = {
    enable = true;
    
    # Optional: lazy-load alpha on VimEnter
    # lazyLoad.settings.event = "VimEnter";

    # Use raw Lua for the full alpha dashboard configuration
    luaConfig = lib.mkDefault ''
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- ASCII header art
      dashboard.section.header.val = {
        [[                               __                ]],
        [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
        [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
        [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
        [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
      }

      -- Menu buttons
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("g", "  Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", "  Config", ":e $MYVIMRC <CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      -- Footer with dynamic info
      local function footer()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return "  Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms"
      end

      dashboard.section.footer.val = footer()
      dashboard.section.footer.opts.hl = "Comment"

      -- Highlight groups
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"

      -- Layout
      dashboard.config.layout = {
        { type = "padding", val = 2 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
        { type = "padding", val = 1 },
        dashboard.section.footer,
      }

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.config)
    '';
  };

  # Optional: define highlight groups for the dashboard
  highlight = {
    AlphaHeader = {
      fg = "#7aa2f7";
      bold = true;
    };
    AlphaButtons = {
      fg = "#c0caf5";
    };
  };
}

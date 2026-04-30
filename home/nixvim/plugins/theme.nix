{ pkgs, ... }: {
  programs.nixvim = {
    extraPlugins = [ pkgs.vimPlugins.tokyonight-nvim ];
    extraConfigLua = ''
      require("tokyonight").setup({
        style = "night",
        transparent = false,
        on_colors = function(colors)
          -- Backgrounds
          colors.bg        = "#090e13"
          colors.bg_dark   = "#090e13"
          colors.bg_float  = "#090e13"
          colors.bg_popup  = "#090e13"
          colors.bg_visual = "#1a2238"

          -- Foregrounds
          colors.fg        = "#c5cce0"
          colors.fg_dark   = "#d6deff"
          colors.fg_gutter = "#1a2238"
          colors.comment   = "#3a4a5a"

          colors.border    = "#1a2238"

          -- ANSI normal
          colors.red       = "#a35a5a"
          colors.green     = "#5f8f87"
          colors.yellow    = "#bfa27a"
          colors.blue      = "#5a78a3"
          colors.magenta   = "#a27ba8"
          colors.cyan      = "#6f9faf"

          -- ANSI bright
          colors.red1      = "#c07a7a"
          colors.green1    = "#7fafa7"
          colors.green2    = "#7fafa7"
          colors.orange    = "#d6b98f"
          colors.blue0     = "#7c9bcb"
          colors.blue1     = "#7c9bcb"
          colors.blue2     = "#7c9bcb"
          colors.blue5     = "#5a78a3"
          colors.blue6     = "#8fbfcc"
          colors.blue7     = "#090e13"
          colors.magenta2  = "#c49acf"
          colors.purple    = "#c49acf"
          colors.teal      = "#8fbfcc"
        end,

        on_highlights = function(hl, c)
          -- CORE UI
          hl.Normal         = { bg = c.bg,  fg = c.fg }
          hl.NormalNC       = { bg = c.bg,  fg = c.fg }
          hl.NormalFloat    = { bg = c.bg,  fg = c.fg }
          hl.FloatBorder    = { bg = c.bg,  fg = c.border }
          hl.FloatTitle     = { bg = c.bg,  fg = c.blue }
          hl.SignColumn     = { bg = c.bg }
          hl.LineNr         = { fg = "#2a3a4a" }
          hl.CursorLineNr   = { fg = "#d6deff",  bold = true }
          hl.CursorLine     = { bg = "#0a0f1c" }
          hl.Visual         = { bg = "#1a2238" }
          hl.Search         = { bg = "#1a2238",  fg = "#d6deff" }
          hl.IncSearch      = { bg = "#5a78a3",  fg = "#090e13" }

          -- SPLITS
          hl.VertSplit      = { fg = c.border }
          hl.WinSeparator   = { fg = c.border }

          -- POPUPS / COMPLETION
          hl.Pmenu          = { bg = c.bg,  fg = c.fg }
          hl.PmenuSel       = { bg = "#1a2238",  fg = "#e8ecf3" }
          hl.PmenuSbar      = { bg = c.bg }
          hl.PmenuThumb     = { bg = "#1a2238" }

          -- TELESCOPE
          hl.TelescopeNormal        = { bg = c.bg,  fg = c.fg }
          hl.TelescopeBorder        = { bg = c.bg,  fg = c.border }
          hl.TelescopePromptNormal  = { bg = c.bg,  fg = "#e8ecf3" }
          hl.TelescopePromptBorder  = { bg = c.bg,  fg = c.border }
          hl.TelescopePromptTitle   = { bg = c.bg,  fg = c.blue }
          hl.TelescopeResultsTitle  = { bg = c.bg,  fg = c.border }
          hl.TelescopePreviewTitle  = { bg = c.bg,  fg = c.border }
          hl.TelescopeSelection     = { bg = "#1a2238",  fg = "#e8ecf3" }
          hl.TelescopeMatching      = { fg = "#7c9bcb",  bold = true }

          -- FILE TREE
          hl.NvimTreeNormal     = { bg = c.bg }
          hl.NvimTreeNormalNC   = { bg = c.bg }
          hl.MiniFilesNormal    = { bg = c.bg }
          hl.MiniFilesBorder    = { bg = c.bg,  fg = c.border }

          -- STATUSLINE
          hl.StatusLine         = { bg = c.bg,  fg = c.fg }
          hl.StatusLineNC       = { bg = c.bg,  fg = "#3a4a5a" }

          -- SYNTAX
          hl.String             = { fg = "#7fafa7" }
          hl.Keyword            = { fg = "#7c9bcb",  bold = true }
          hl.Function           = { fg = "#8fbfcc" }
          hl.Type               = { fg = "#c49acf" }
          hl.Constant           = { fg = "#c07a7a" }
          hl.Comment            = { fg = "#3a4a5a",  italic = true }
          hl.Operator           = { fg = "#d6b98f" }
          hl.Number             = { fg = "#d6b98f" }
          hl.Boolean            = { fg = "#c07a7a" }
        end,
      })
      vim.cmd("colorscheme tokyonight")
    '';
  };
}

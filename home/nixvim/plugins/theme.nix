{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = [ pkgs.vimPlugins.tinted-nvim ];
    extraConfigLua = ''
      require("tinted-nvim").setup({
        default_scheme = "base16-tokyodark",
        ui = { transparent = true },
        highlights = {
          overrides = function(palette)
            return {
              StatusLine = { bg = "NONE" },
            }
          end,
        },
      })
    '';
  };
}

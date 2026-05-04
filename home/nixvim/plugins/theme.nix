{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = [ pkgs.vimPlugins.tinted-nvim ];
    extraConfigLua = ''
      require("tinted-nvim").setup({
        default_scheme = "base16-brewer",
        ui = { transparent = true },
        highlights = {
          overrides = function(palete)
          return {
            StatusLine = { bg = "NONE" }
          }
          end,
        },
      })
    '';
  };
}

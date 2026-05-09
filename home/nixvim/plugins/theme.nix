{ pkgs, ... }:
{
  programs.nixvim = {
    enable = true;

    colorschemes = {
      melange.enable = false;
    };

    extraConfigLua = ''
      vim.api.nvim_create_autocmd("Signal", {
        pattern = "SIGUSR1",
        callback = function()
          local ok = pcall(dofile, vim.fn.expand("~/.cache/matugen/nixvim-theme.lua"))
          if ok then
            vim.notify("matugen theme reloaded", vim.log.levels.INFO)
          end
        end,
      })

      local theme_path = vim.fn.expand("~/.cache/matugen/nixvim-theme.lua")
      if vim.fn.filereadable(theme_path) == 1 then
        dofile(theme_path)
      else
        vim.notify("matugen theme not found at " .. theme_path, vim.log.levels.WARN)
      end
    '';
  };
}

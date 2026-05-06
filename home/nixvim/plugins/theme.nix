{ pkgs, ... }:
{
  programs.nixvim = {
    enable = true;

    extraPlugins = [
      pkgs.vimPlugins.tokyodark-nvim
    ];

    extraConfigLua = ''
      require("tokyodark").setup({
        transparent_background = false,
        gamma = 1.0,
      })

      vim.cmd.colorscheme("tokyodark")

        vim.api.nvim_set_hl(0, "Normal", { bg = "#0c0d15", fg = "#a0a8cd" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "#0c0d15" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#0c0d15" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#0c0d15", fg = "#a0a8cd" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#0c0d15", fg = "#a0a8cd" })
        vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#0c0d15", fg = "#212234" })
        vim.api.nvim_set_hl(0, "VertSplit", { bg = "#0c0d15", fg = "#212234" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "#0c0d15" })
        vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#0c0d15" })
        vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20"
        vim.api.nvim_set_hl(0, "Comment", { fg = "#7a80a0", italic = true })
    '';
  };
}

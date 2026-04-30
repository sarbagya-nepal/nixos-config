{ ... }:

{
  programs.nixvim.plugins.trouble = {
    enable = true;
    settings = {
      auto_close = true;
      auto_preview = true;
      auto_refresh = true;
      focus = false;
      follow = true;
      indent_guides = true;
      max_items = 200;
      multiline = true;
      warn_no_results = true;
      open_no_results = false;
      win = {
        position = "bottom";
        size = 10;
      };
      preview = {
        type = "main";
        scratch = true;
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options.desc = "Diagnostics (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options.desc = "Buffer Diagnostics (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = "<cmd>Trouble symbols toggle<cr>";
      options.desc = "Symbols (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>cl";
      action = "<cmd>Trouble lsp toggle<cr>";
      options.desc = "LSP Definitions / References (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<cr>";
      options.desc = "Location List (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>xQ";
      action = "<cmd>Trouble qflist toggle<cr>";
      options.desc = "Quickfix List (Trouble)";
    }
  ];
}

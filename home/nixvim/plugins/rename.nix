{ ... }:

{
  programs.nixvim.plugins.inc-rename = {
    enable = true;
    settings = {
      cmd_name = "IncRename";
      hl_group = "Substitute";
      preview_empty_name = false;
      show_message = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>rn";
      action.__raw = # lua
        ''
          function()
            return ":IncRename " .. vim.fn.expand("<cword>")
          end
        '';
      options = {
        expr = true;
        desc = "Rename symbol (live preview)";
      };
    }
  ];
}

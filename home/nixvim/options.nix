{ ... }:

{
  programs.nixvim = {
    opts = {
      number = true;
      relativenumber = true;
      numberwidth = 2;

      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      autoindent = true;
      smartindent = true;

      ignorecase = true;
      smartcase = true;
      hlsearch = true;
      incsearch = true;

      termguicolors = true;
      background = "dark";
      signcolumn = "yes";
      cursorline = true;

      backspace = "indent,eol,start";

      clipboard = "unnamedplus";

      wrap = false;
      scrolloff = 10;
      sidescrolloff = 10;
      mouse = "a";

      splitright = true;
      splitbelow = true;

      backup = false;
      swapfile = false;
      undofile = true;

      updatetime = 250;
      timeoutlen = 400;

      virtualedit = "block";
      inccommand = "split";

      wildmenu = true;
      cmdheight = 1;
      showmode = false;
      completeopt = "menuone,noselect";

      list = true;
      listchars = "tab:» ,trail:·,nbsp:␣";

      fileencoding = "utf-8";
    };

    # EXTRA LUA
    extraConfigLua = ''
      vim.opt.iskeyword:append("-")
      -- vim.diagnostic.config({
      --
      --   virtual_text = {
      --     prefix = "●",  -- small dot before virtual text
      --     spacing = 2,
      --     source = "if_many";
      --   },
      --   virtual_lines = false;
      --   underline = true,
      --   signs = {
      --     active = true,  -- ensure sign column uses your icons
      --     text = {
      --       [vim.diagnostic.severity.ERROR] = "",
      --       [vim.diagnostic.severity.WARN]  = "",
      --       [vim.diagnostic.severity.INFO]  = "",
      --       [vim.diagnostic.severity.HINT]  = "",
      --     },
      --   },
      --   float = { border = "rounded" },
      --   update_in_insert = false,
      --   severity_sort = true,
      -- })
    '';
  };
}

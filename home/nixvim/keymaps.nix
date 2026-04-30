{ ... }:

{
  programs.nixvim = {
    keymaps = [
      # Insert mode exit
      {
        mode = "i";
        key = "jk";
        action = "<Esc>";
      }

      # Select all
      {
        mode = "n";
        key = "<C-a>";
        action = "gg<S-v>G";
      }

      # Line navigation
      {
        mode = "n";
        key = "H";
        action = "^";
      }
      {
        mode = "n";
        key = "L";
        action = "$";
      }

      # paste fix
      {
        mode = "v";
        key = "p";
        action = "\"_dP";
      }

      # search clear
      {
        mode = "n";
        key = "<leader>h";
        action = ":nohl<CR>";
      }

      # numbers
      {
        mode = "n";
        key = "<leader>+";
        action = "<C-a>";
      }
      {
        mode = "n";
        key = "<leader>-";
        action = "<C-x>";
      }

      # splits
      {
        mode = "n";
        key = "<leader>sv";
        action = "<C-w>v";
      }
      {
        mode = "n";
        key = "<leader>sh";
        action = "<C-w>s";
      }
      {
        mode = "n";
        key = "<leader>se";
        action = "<C-w>=";
      }
      {
        mode = "n";
        key = "<leader>sx";
        action = "<cmd>close<CR>";
      }

      # buffers
      {
        mode = "n";
        key = "<Tab>";
        action = ":bn<CR>";
      }
      {
        mode = "n";
        key = "<S-Tab>";
        action = ":bp<CR>";
      }
      {
        mode = "n";
        key = "<leader>x";
        action = ":bd<CR>";
      }

      # tabs
      {
        mode = "n";
        key = "<leader>to";
        action = "<cmd>tabnew<CR>";
      }
      {
        mode = "n";
        key = "<leader>tx";
        action = "<cmd>tabclose<CR>";
      }
      {
        mode = "n";
        key = "<leader>tn";
        action = "<cmd>tabn<CR>";
      }
      {
        mode = "n";
        key = "<leader>tp";
        action = "<cmd>tabp<CR>";
      }

      # window nav
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w>h";
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w>j";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w>k";
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w>l";
      }

      # resize
      {
        mode = "n";
        key = "<C-Up>";
        action = ":resize +2<CR>";
      }
      {
        mode = "n";
        key = "<C-Down>";
        action = ":resize -2<CR>";
      }
      {
        mode = "n";
        key = "<C-Left>";
        action = ":vertical resize -2<CR>";
      }
      {
        mode = "n";
        key = "<C-Right>";
        action = ":vertical resize +2<CR>";
      }

      # indent visual
      {
        mode = "v";
        key = "<";
        action = "<gv";
      }
      {
        mode = "v";
        key = ">";
        action = ">gv";
      }

      # move lines
      {
        mode = "v";
        key = "J";
        action = ":m '>+1<CR>gv=gv";
      }
      {
        mode = "v";
        key = "K";
        action = ":m '<-2<CR>gv=gv";
      }

      # file explorer
      {
        mode = "n";
        key = "-";
        action = ":Oil --float<CR>";
      }
      {
        mode = "n";
        key = "<leader>e";
        action = ":lua Snacks.explorer()<CR>";
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>Telescope find_files<CR>";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = "<cmd>Telescope live_grep<CR>";
      }
      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>Telescope buffers<CR>";
      }
      {
        mode = "n";
        key = "<leader>fh";
        action = "<cmd>Telescope help_tags<CR>";
      }
      {
        mode = "n";
        key = "<leader>fr";
        action = "<cmd>Telescope oldfiles<CR>";
      }
    ];
  };
}

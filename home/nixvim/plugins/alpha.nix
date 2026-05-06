{ config, lib, pkgs, ... }:

{
  programs.nixvim = {
    plugins.alpha = {
      enable = true;

      settings = {

        layout = [
          {
            type = "padding";
            val = 2;
          }
          {
            type = "text";
            val = [
              "                                   "
              "                                   "
              "                                   "
              "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          "
              "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       "
              "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     "
              "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    "
              "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   "
              "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  "
              "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   "
              " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  "
              " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ "
              "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     "
              "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     "
              "                                   "
            ];
            opts = {
              position = "center";
              hl = "AlphaHeader";
            };
          }
          {
            type = "padding";
            val = 2;
          }
          {
            type = "group";
            val = [
              {
                type = "button";
                val = "  Find file";
                on_press.raw = "function() require('telescope.builtin').find_files() end";
                opts = {
                  keymap = [ "n" "f" ":Telescope find_files <CR>" { noremap = true; silent = true; nowait = true; } ];
                  shortcut = "f";
                  position = "center";
                  cursor = 3;
                  width = 50;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              }
              {
                type = "button";
                val = "  New file";
                on_press.raw = "function() vim.cmd('ene | startinsert') end";
                opts = {
                  keymap = [ "n" "e" ":ene <BAR> startinsert <CR>" { noremap = true; silent = true; nowait = true; } ];
                  shortcut = "e";
                  position = "center";
                  cursor = 3;
                  width = 50;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              }
              {
                type = "button";
                val = "  Recent files";
                on_press.raw = "function() require('telescope.builtin').oldfiles() end";
                opts = {
                  keymap = [ "n" "r" ":Telescope oldfiles <CR>" { noremap = true; silent = true; nowait = true; } ];
                  shortcut = "r";
                  position = "center";
                  cursor = 3;
                  width = 50;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              }
              {
                type = "button";
                val = "  Find text";
                on_press.raw = "function() require('telescope.builtin').live_grep() end";
                opts = {
                  keymap = [ "n" "g" ":Telescope live_grep <CR>" { noremap = true; silent = true; nowait = true; } ];
                  shortcut = "g";
                  position = "center";
                  cursor = 3;
                  width = 50;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              }
              {
                type = "button";
                val = "  Config";
                opts = {
                  keymap = [ "n" "c" ":e ~/nixos-config/home/nixvim/plugins/ <CR>" { noremap = true; silent = true; nowait = true; } ];
                  shortcut = "c";
                  position = "center";
                  cursor = 3;
                  width = 50;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              }
              {
                type = "button";
                val = "  Quit";
                on_press.raw = "function() vim.cmd('qa') end";
                opts = {
                  keymap = [ "n" "q" ":qa<CR>" { noremap = true; silent = true; nowait = true; } ];
                  shortcut = "q";
                  position = "center";
                  cursor = 3;
                  width = 50;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              }
            ];
          }
          {
            type = "padding";
            val = 1;
          }
          {
            type = "text";
            val = "  Don't Stop Until You are Proud...";
            opts = {
              position = "center";
              hl = "Type";
            };
          }
        ];

        opts = {
          noautocmd = true;
        };
      };
    };
  };
}

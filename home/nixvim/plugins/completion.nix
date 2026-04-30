{ pkgs, ... }:

{
  programs.nixvim = {
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;

        settings = {
          completion = {
            completeopt = "menu,menuone,preview,noinsert";
          };

          snippet = {
            expand = "function(args) require('luasnip').lsp_expand(args.body) end";
          };

          window = {
            completion = {
              border = "rounded";
            };
            documentation = {
              border = "rounded";
            };
          };

          formatting = {
            format = ''
              require('lspkind').cmp_format({
                mode = 'symbol_text',
                maxwidth = 50,
                ellipsis_char = '...',
                menu = {
                  nvim_lsp = '[LSP]',
                  luasnip = '[Snippet]',
                  buffer = '[Buffer]',
                  path = '[Path]',
                },
              })
            '';
          };

          mapping = {
            "<CR>" = "cmp.mapping.confirm({ select = false })";
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-e>" = "cmp.mapping.abort()";
          };

          sources = [
            { name = "nvim_lsp"; }
            { name = "luasnip"; }
            { name = "buffer"; }
            { name = "path"; }
          ];

          # optional but nice
          experimental = {
            ghost_text = true;
          };
        };
      };

      # --- cmp sources ---
      cmp-nvim-lsp.enable = true;
      cmp-buffer.enable = true;
      cmp-path.enable = true;
      cmp_luasnip.enable = true;

      # --- snippets ---
      luasnip = {
        enable = true;
        fromVscode = [
          { paths = pkgs.vimPlugins.friendly-snippets; }
        ];
      };

      # --- lspkind (NO AUTO CMP INTEGRATION → avoids conflict) ---
      lspkind = {
        enable = true;
        cmp.enable = false;
      };
    };

    # --- YOUR SMART TAB LOGIC (kept in Lua) ---
    extraConfigLua = ''
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              local entries = cmp.get_entries()
              if #entries == 1 then
                cmp.confirm({ select = true })
              else
                cmp.select_next_item()
              end
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
      })
    '';
  };
}

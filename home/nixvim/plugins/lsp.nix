{ pkgs, ... }:

{
  programs.nixvim.extraPackages = with pkgs; [
    typescript-language-server
    vscode-langservers-extracted
    tailwindcss-language-server
    emmet-language-server
    nixd
    qt6.qtdeclarative
    lua-language-server
  ];

  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      ts_ls.enable = true;
      html = {
        enable = true;
        filetypes = [ "html" "htmldjango" "jinja" ];
      };
      cssls.enable = true;
      jsonls.enable = true;
      tailwindcss.enable = true;
      emmet_language_server.enable = true;
      nixd.enable = true;
      qmlls = {
        enable = true;
        cmd = [ "qmlls" ];
        filetypes = [ "qml" ];
      };
      lua_ls = {
        enable = true;
        settings.Lua = {
          runtime.version = "LuaJIT";
          workspace.checkThirdParty = false;
          completion.callSnippet = "Replace";
          telemetry.enable = false;
          diagnostics.globals = [ "vim" ];
        };
      };
    };

    keymaps = {
      silent = true;
      diagnostic = {
        "<leader>cd" = {
          action = "open_float";
          desc = "Line diagnostics";
        };
        "[d" = {
          action = "goto_prev";
          desc = "Prev diagnostic";
        };
        "]d" = {
          action = "goto_next";
          desc = "Next diagnostic";
        };
      };
      lspBuf = {
        "gd" = {
          action = "definition";
          desc = "Go to definition";
        };
        "gD" = {
          action = "declaration";
          desc = "Go to declaration";
        };
        "gr" = {
          action = "references";
          desc = "References";
        };
        "gI" = {
          action = "implementation";
          desc = "Go to implementation";
        };
        "gy" = {
          action = "type_definition";
          desc = "Go to type definition";
        };
        "K" = {
          action = "hover";
          desc = "Hover docs";
        };
        "<C-k>" = {
          action = "signature_help";
          desc = "Signature help";
        };
        "<leader>rn" = {
          action = "rename";
          desc = "Rename symbol";
        };
        "<leader>ca" = {
          action = "code_action";
          desc = "Code action";
        };
      };
    };

    onAttach = # lua
      ''
        if client:supports_method("textDocument/documentHighlight") then
          local aug = vim.api.nvim_create_augroup("lsp_highlight_" .. bufnr, { clear = true })
          vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
            buffer = bufnr, group = aug, callback = vim.lsp.buf.document_highlight,
          })
          vim.api.nvim_create_autocmd("CursorMoved", {
            buffer = bufnr, group = aug, callback = vim.lsp.buf.clear_references,
          })
        end

        if client:supports_method("textDocument/inlayHint") then
          vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
        end
      '';
  };
}

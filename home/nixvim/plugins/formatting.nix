{ pkgs, ... }:

{
  programs.nixvim = {
    plugins.conform-nvim = {
      enable = true;

      settings = {
        formatters_by_ft = {
          javascript = [ "prettierd" ];
          typescript = [ "prettierd" ];
          javascriptreact = [ "prettierd" ];
          typescriptreact = [ "prettierd" ];

          css = [ "prettierd" ];
          html = [ "prettierd" ];
          json = [ "prettierd" ];
          yaml = [ "prettierd" ];
          markdown = [ "prettierd" ];

          lua = [ "stylua" ];
        };

        # ✅ AUTO FORMAT ON SAVE
        format_on_save = {
          lsp_fallback = true;
          async = false;
          timeout_ms = 1000;
        };

        notify_on_error = true;
      };
    };

    # binaries
    extraPackages = with pkgs; [
      prettierd
      stylua
      alejandra
      nixfmt
    ];
  };
}

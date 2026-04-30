{ ... }:

{
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;

      ensureInstalled = [
        "lua"
        "html"
        "css"
        "scss"
        "javascript"
        "typescript"
        "tsx"
        "json"
        "nix"
      ];

      autoInstall = true;

      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };

      indent.enable = true;
    };

    opts.termguicolors = true;
  };
}

{ ... }:

{
  programs.nixvim = {
    plugins.snacks = {
      enable = true;

      settings = {
        explorer = {
          enabled = true;
          replace_netrw = true;
        };

        picker = {
          enabled = true;
        };
        indent = {
          enabled = true;
        };
      };
    };
  };
}

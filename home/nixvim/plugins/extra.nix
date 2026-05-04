{ ... }:
{
  programs.nixvim = {
    plugins = {
      lastplace = {
        enable = true;
      };
      gitsigns = {
        enable = true;
      };
    };
  };
}

{ ... }:
{
  programs.nixvim = {
    plugins = {
      lastplace = {
        enable = true;
      };
      notify = {
        enable = true;
      };
    };
  };
}

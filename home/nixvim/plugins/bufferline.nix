{ ... }:
{
  programs.nixvim = {
    plugins.bufferline = {
      enable = true;
    };
    plugins.web-devicons = {
      enable = true;
    };
  };
}

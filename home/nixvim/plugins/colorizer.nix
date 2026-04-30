{ ... }:
{
  programs.nixvim = {
    plugins.colorizer = {
      enable = true;
      settings = {
        filetypes = [ "*" ];
        user_default_options = {
          RGB = true;
          RRGGBB = true;
          names = true;
          RRGGBBAA = false;
          rgb_fn = false;
          hsl_fn = false;
          css = false;
          css_fn = false;
          mode = "background";
        };
      };
    };

    autoCmd = [
    {
      event = "ColorScheme";
      pattern = "*";
      command = "ColorizerAttachToBuffer";
    }
    ];

    extraConfigLuaPost = ''
      vim.defer_fn(function()
          vim.cmd("ColorizerAttachToBuffer")
          end, 100)
      '';
  };
}

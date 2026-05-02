{ ... }:

{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;

      extensions = {
        fzf-native = {
          enable = true;
        };

        ui-select = {
          enable = true;
        };
      };

      settings = {
        defaults = {
          layout_config = {
            prompt_position = "top";
          };

          sorting_strategy = "ascending";
          layout_strategy = "horizontal";
        };

        extensions = {
          ui-select = {
            theme = "dropdown";
          };
        };
      };
    };
  };
}

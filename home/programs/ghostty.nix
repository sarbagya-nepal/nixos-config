{ ... }:

{
  programs.ghostty = {
    enable = true;

    settings = {
      font-size = 13;

      window-padding-x = 12;
      window-padding-y = 12;

      window-inherit-working-directory = false;

      scrollbar = "never";

      background-opacity = 0.9;

      config-file = "~/.cache/matugen/ghostty-colors";

    };

  };
}

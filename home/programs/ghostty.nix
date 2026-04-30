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

      background-opacity = 1;

      # ================================
      # Retro Fog Theme
      # ================================

      background = "#090e13";
      foreground = "#d6deff";

      selection-background = "#1a2238";
      selection-foreground = "#e8ecf3";

      # --- ANSI palette ---
      palette = [
        "0=#0a0f1c"
        "1=#a35a5a"
        "2=#5f8f87"
        "3=#bfa27a"
        "4=#5a78a3"
        "5=#a27ba8"
        "6=#6f9faf"
        "7=#c5cce0"

        "8=#1a2238"
        "9=#c07a7a"
        "10=#7fafa7"
        "11=#d6b98f"
        "12=#7c9bcb"
        "13=#c49acf"
        "14=#8fbfcc"
        "15=#e8ecf3"
      ];
    };
  };
}

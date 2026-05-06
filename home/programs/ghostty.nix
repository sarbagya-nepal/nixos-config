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

      background-opacity = 0.95;

      # Theme (inlined)
      palette = [
        "0=#0c0d15"
        "1=#ee6d85"
        "2=#95c561"
        "3=#d7a65f"
        "4=#7199ee"
        "5=#a485dd"
        "6=#38a89d"
        "7=#a0a8cd"
        "8=#212234"
        "9=#ee6d85"
        "10=#95c561"
        "11=#d7a65f"
        "12=#7199ee"
        "13=#a485dd"
        "14=#38a89d"
        "15=#a0a8cd"
      ];

      background = "#0c0d15";
      foreground = "#a0a8cd";
      cursor-color = "#a0a8cd";
      selection-background = "#a0a8cd";
    };
  };
}

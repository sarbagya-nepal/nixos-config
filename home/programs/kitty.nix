{ ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      font_size = 13;

      window_padding_width = 12;

      scrollback_lines = 10000;

      enable_audio_bell = false;

      background_opacity = 0.95;

      allow_remote_control = "yes";

      include = "~/.cache/matugen/kitty-colors.conf";
    };
  };
}

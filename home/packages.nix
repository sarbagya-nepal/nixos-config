{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    btop
    eza
    playerctl
    brightnessctl
    papirus-icon-theme
    qutebrowser
    awww
    rofi
    ghostty
    tree
    gcc
    gnumake
    yazi
    quickshell
    kitty
    hyprshot
    nodejs
    unzip
    yarn
  ];
}

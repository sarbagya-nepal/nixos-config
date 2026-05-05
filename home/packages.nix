{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    btop
    eza
    playerctl
    brightnessctl
    papirus-icon-theme
    awww
    rofi
    ghostty
    tree
    gcc
    gnumake
    yazi
    quickshell
    hyprshot
    nodejs
    unzip
    yarn
    matugen
    waybar
    lz4
    nautilus
    qt6.qtwayland
    python3
    spotify
    nwg-look
    spicetify-cli
  ];
}

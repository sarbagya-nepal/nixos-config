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
    lz4
    nautilus
    qt6.qtwayland
    python3
    nwg-look
    tokyonight-gtk-theme
  ];
}

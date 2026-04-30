{ ... }:

{
  imports = [
    ./packages.nix
    ./fonts.nix
    ./shell.nix
    ./nixvim
    ./programs
  ];

  home.username = "chain";
  home.homeDirectory = "/home/chain";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}

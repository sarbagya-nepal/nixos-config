{ inputs, pkgs, ... }:

{
  imports = [
    inputs.spicetify-nix.homeManagerModules.default
  ];

  programs.spicetify = {
    enable = true;

    spotifyPackage = pkgs.spotify;

    enabledExtensions = with inputs.spicetify-nix.extensions; [
      fullAppDisplay
      shuffle
    ];

    enabledCustomApps = with inputs.spicetify-nix.apps; [
      marketplace
    ];

    theme = inputs.spicetify-nix.themes.dribbblish;
    colorScheme = "Custom";
  };
}

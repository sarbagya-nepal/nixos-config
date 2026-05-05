{ pkgs, ... }:

{
  programs.spicetify = {
    enable = true;
    spotifyPackage = pkgs.spotify;

    theme = {
      name = "Matugen";
    };

    enabledExtensions = [
      "fullAppDisplay.js"
      "shuffle+.js"
    ];

    enabledCustomApps = [
      "marketplace"
    ];
  };
}

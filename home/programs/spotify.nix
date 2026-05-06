{ inputs, pkgs, ... }:

let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
  {
  imports = [ inputs.spicetify-nix.homeManagerModules.default ];

  programs.spicetify = {
    enable = true;
    spotifyPackage = pkgs.spotify;
    theme = spicePkgs.themes.text;
    colorScheme = "custom";

    customColorScheme = {
      main               = "0c0d15";
      text               = "a0a8cd";
      subtext            = "565f89";

      accent             = "7199ee";
      accent-active      = "7199ee";
      accent-inactive    = "212234";

      highlight          = "06080a";
      banner             = "ee6d85";

      border-active      = "a0a8cd";
      border-inactive    = "212234";

      header             = "a485dd";

      notification       = "38a89d";
      notification-error = "ee6d85";
    };

    enabledCustomApps = with spicePkgs.apps; [
      marketplace
    ];

    enabledExtensions = with spicePkgs.extensions; [
      adblock
      fullAppDisplay
      shuffle
    ];
  };
}

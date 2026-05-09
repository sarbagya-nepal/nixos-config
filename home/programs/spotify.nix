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
      main               = "e6dfd5";
      text               = "2a2623";
      subtext            = "6e655d";

      accent             = "7d8fa6";
      accent-active      = "7d8fa6";
      accent-inactive    = "c8c0b5";

      highlight          = "f0ebe3";
      banner             = "9a8ca5";

      border-active      = "bdb4aa";
      border-inactive    = "d6cec3";

      header             = "ebe5dc";

      notification       = "7f9c96";
      notification-error = "b86c6c";
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

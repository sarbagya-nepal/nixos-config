{ inputs, ... }:

{
  imports = [
    inputs.nixvim.homeModules.nixvim

      ./globals.nix
      ./keymaps.nix
      ./options.nix
      ./plugins
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
}

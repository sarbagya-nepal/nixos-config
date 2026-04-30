{ ... }:

{
  imports = [
    ./extra.nix
    ./autoclose.nix

    ./theme.nix
    ./colorizer.nix
    ./snacks.nix
    ./lualine.nix
    ./bufferline.nix

    ./oil.nix
    ./telescope.nix

    ./treesitter.nix

    ./lsp.nix
    ./completion.nix
    ./formatting.nix
    ./rename.nix
    ./fidget.nix
    ./trouble.nix
  ];
}

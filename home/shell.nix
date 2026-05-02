{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    # --- history ---
    history = {
      size = 10000;
      save = 10000;
      ignoreDups = true;
      path = "$HOME/.zsh_history";
    };
    # --- aliases ---
    shellAliases = {
      v = "nvim";
      la = "eza -la --color=always --group-directories-first --icons";
      ls = "eza -a --color=always --group-directories-first --icons";
      l = "eza --color=always --group-directories-first --icons";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-config#nixos";
      nrt = "sudo nixos-rebuild test --flake ~/nixos-config#nixos";
      ":q" = "exit";
      ":wq" = "exit";
      ff = "fastfetch";
      fm = "yazi";
    };

    # --- oh-my-zsh ---
    oh-my-zsh = {
      enable = true;
    };

    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.zsh-autosuggestions;
        file = "share/zsh-autosuggestions/zsh-autosuggestions.zsh";
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.zsh-syntax-highlighting;
        file = "share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh";
      }
    ];

    initContent = ''
      # completion styling
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
      zstyle ':completion:*' menu select
      autoload -Uz compinit
      compinit

      fastfetch
    '';
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$git_status$character";
      character = {
        success_symbol = "[❯](green)";
        error_symbol = "[❯](red)";
        vimcmd_symbol = "[❯](blue)";
      };
      directory = {
        style = "cyan bold";
        truncation_length = 3;
        truncation_symbol = "…/";
        read_only = "  ";
      };
    };
  };
}

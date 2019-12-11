{ config, pkgs, ... }:

{
  # Packages
  home.packages = with pkgs; [

    # GNU > BSD :)
    coreutils

    # Useful for system administration
    htop
    wget

    # Development
    gitAndTools.tig
    dhall
    ag
    ripgrep
  ];

  # Configuration
  imports = [
    ./me/hm-fish.nix
    ./me/hm-tmux.nix
    ./me/hm-git.nix
    ./me/hm-emacs.nix
    ./me/hm-zsh.nix
    ./me/hm-direnv.nix
    ./me/hm-lorri.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

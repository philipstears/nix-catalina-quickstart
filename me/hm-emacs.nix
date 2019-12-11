# vim: set sts=2 ts=2 sw=2 expandtab :

{ pkgs, ... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs26-nox;
    extraPackages = (
      epkgs:
      [
        epkgs.melpaPackages.use-package

        epkgs.melpaPackages.ag
        epkgs.melpaPackages.auto-highlight-symbol
        epkgs.melpaPackages.cargo
        epkgs.melpaPackages.company
        epkgs.melpaPackages.company-erlang
        epkgs.melpaPackages.editorconfig
        epkgs.melpaPackages.erlang
        epkgs.melpaPackages.eproject
        epkgs.melpaPackages.flycheck
        epkgs.melpaPackages.flymake-cursor
        epkgs.melpaPackages.linum-relative
        epkgs.melpaPackages.helm-ag
        epkgs.melpaPackages.magit
        epkgs.melpaPackages.neotree
        epkgs.melpaPackages.smex
        epkgs.melpaPackages.spaceline
        epkgs.melpaPackages.psc-ide
        epkgs.melpaPackages.projectile
        epkgs.melpaPackages.rainbow-delimiters

        epkgs.melpaPackages.ace-jump-mode
        epkgs.melpaPackages.dhall-mode
        epkgs.melpaPackages.elm-mode
        epkgs.melpaPackages.markdown-mode
        epkgs.melpaPackages.purescript-mode
        epkgs.melpaPackages.rust-mode
        epkgs.melpaPackages.terraform-mode
        epkgs.melpaPackages.toml-mode
        epkgs.melpaPackages.typescript-mode
        epkgs.melpaPackages.web-mode
        epkgs.melpaPackages.yaml-mode

        epkgs.melpaPackages.pastelmac-theme
        epkgs.melpaPackages.monokai-theme
        epkgs.melpaPackages.ir-black-theme
        epkgs.melpaPackages.solarized-theme
        epkgs.melpaPackages.underwater-theme

       ]
      );
  };

  home.file.".emacs.d/init.el".source = ./files/emacs-init.el;
}

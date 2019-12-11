
{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAbbrs = {
         # Git abbreviations
         "ga" = "git add";
         "gc" = "git commit";
         "gcam" = "git commit -am";
         "gcm" = "git commit -m";
         "gco" = "git checkout";
         "gcob" = "git checkout -b";
         "gcom" = "git checkout master";
         "gcod" = "git checkout develop";
         "gd" = "git diff";
         "gp" = "git push";
         "gdc" = "git diff --cached";
         "glg" = "git log --color --graph --pretty --oneline";
         "glgb" = "git log --all --graph --decorate --oneline --simplify-by-decoration";
         "gst" = "git status";
         "emacs" = "emacs -nw";
       };

       interactiveShellInit =
         ''
         '';
       promptInit =
         ''
            # Emacs ansi-term support
            if test -n "$EMACS"
                set -x TERM eterm-color
                # Disable right prompt in emacs
                function fish_right_prompt; true; end
                #This function may be required for Emacs support.
                function fish_title; true; end
            end

            # Disable the vim-mode indicator [I] and [N].
            # Let the theme handle it instead.
            function fish_default_mode_prompt; true; end

            # chips
            if [ -e ~/.config/chips/build.fish ] ; . ~/.config/chips/build.fish ; end
         '';
 };
}

{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName  = "srstrong";
    userEmail = "steve@srstrong.com";
#    signing = {
#      signByDefault = true;
#      key = "FA836504B26D139A";
#    };
  };
}


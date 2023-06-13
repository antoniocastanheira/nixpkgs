{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Antonio Castanheira";
    userEmail = "antonio.castanheira@getbridge.com";
    ignores = [
      ".direnv"
    ];
  };

}

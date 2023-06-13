{ pkgs, unstable, ... }: {
  imports = [
    ../ide
  ];

  home.packages = with pkgs; [
    mkcert
    asciinema
    postgresql
  ] ++ (with unstable; [
    ## 
  ]);

}

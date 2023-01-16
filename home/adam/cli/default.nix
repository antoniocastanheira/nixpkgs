{ pkgs, ... }: {
  imports = [
    ./git.nix
    ./ssh.nix
    ./tmux.nix
    ./zsh.nix
    ./unstable.nix
  ];
  home.packages = with pkgs; [
    jq
    enc
    htop
    wget
    xplr
    rclone
    oh-my-posh
  ];
}

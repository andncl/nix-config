{ configs, pkgs, ... }:

{
  home.username = "andi";
  home.homeDirectory = "/home/andi";
  home.stateVersion = "24.11";

  programs.zsh = {
    enable = true;
    shellAliases = {
      gs = "git status";
      gc = "git commit -m";
      gadd = "git add";
      giff = "git diff";
      rebuild = "sudo nixos-rebuild switch";
      unsw-connect = "sudo gpclient --ignore-tls-errors --fix-openssl connect https://ra.vpn.unsw.edu.au";
   };
   oh-my-zsh = {
     enable = true;
     theme = "robbyrussell";
     plugins = [
       "git"
       "sudo"
       "colored-man-pages"
     ]; 
   };
  };

  home.packages = with pkgs; [
    ardour
    bat
    blueman
    conda
    gh
    gnome-network-displays
    gpclient
    helix
    micromamba
    nautilus
    neofetch
    networkmanagerapplet
    nnn
    obsidian
    oh-my-zsh
    pyenv
    remmina
    spotify
    unzip
    vscode
    zip
  ];

  programs.kitty = {
    enable = true;
    font.name = "JetBrains Mono";
    font.size = 12;
  };

  programs.waybar = {
    enable = true;
  };

  services.blueman-applet.enable = true;
}

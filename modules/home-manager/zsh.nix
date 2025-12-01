{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    shellAliases = {
      neofetch = "fastfetch";
      ls = "lsd";
      ll = "lsd -l";
      lgit = "lazygit";
      cat = "bat";
      vim = "nvim";
      update = "sudo nixos-rebuild switch --flake /etc/nixos/#default --impure --upgrade";
      grep = "rg";
      grepa = "rga";
      find = "fd";
      diff = "delta";
    };
  };
}

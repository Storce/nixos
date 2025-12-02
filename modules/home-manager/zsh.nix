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
      update = "sudo nixos-rebuild switch --flake $HOME/nixos#desktop";
      grep = "rg";
      grepa = "rga";
      find = "fd";
      diff = "delta";
    };
    initContent = ''
      bindkey "^R" history-incremental-search-backward
    '';
    enableCompletion = true;
  };
}

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
      source jssha personal >> /dev/null
      clear
      echo "Welcome Back"
    '';

    enableCompletion = true;

    oh-my-zsh = {
      enable = true;
      custom = "$HOME/nixos/modules/home-manager/zsh";
      theme = "storce-custom";
      plugins = ["git" "sudo"];
    };
  };
}

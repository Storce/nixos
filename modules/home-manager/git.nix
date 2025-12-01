{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "storce";
    userEmail = "zezhou_wang@berkeley.edu";
  };
  home.packages = with pkgs; [
    gh
    lazygit
  ];
}

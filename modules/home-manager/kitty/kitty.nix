{
  programs.kitty = {
    enable = true;
    settings = {
      theme = "kanagawa";
      cursor_trail = 1;
      cursor_trail_decay = "0.1 0.4";
      cursor_trail_start_threshold = 0;
      font_size = 10.5;
    };
    themeFile = "kanagawa";
    extraConfig = ''
      include "$HOME/nixos/modules/home-manager/kitty/joe-kanagawa.conf"
    '';
  };
}

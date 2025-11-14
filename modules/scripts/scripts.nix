{pkgs, ...}: {
  home.packages = with pkgs; [
    (writeShellScriptBin "jssha" (builtins.readFile ./jssha.sh))
  ];
}

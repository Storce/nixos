{inputs, ...}: {
  programs.firefox = {
    enable = true;
    policies = {
      Extensions = {
        Install = ["https://addons.mozilla.org/firefox/downloads/1password.xpi"];
      };
    };
  };
}

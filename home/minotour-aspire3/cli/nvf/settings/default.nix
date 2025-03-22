{
  imports = [
    ./plugins
    ./keybinds.nix
  ];
  vim = {
    viAlias.enable = true;
    vimAlias.enable = true;
    options = {
      tabstop = 4;
      shiftwidth = 4;
      autoindent = true;
      cursorlineopt = "number";
    };
  };
}

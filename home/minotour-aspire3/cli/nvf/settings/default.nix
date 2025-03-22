{
  imports = [
    ./plugins
    ./keybinds.nix
  ];
  vim = {
    viAlias = true;
    vimAlias = true;
    options = {
      tabstop = 4;
      shiftwidth = 4;
      autoindent = true;
      cursorlineopt = "number";
    };
    luaConfigPost = ''
      vim.cmd 'colorscheme material'
    '';
  };
}

{pkgs, ...}: {
  vim.lazy.plugins = {
    "material.nvim" = {
      enabled = true;
      package = pkgs.vimPlugins.material-nvim;
      setupModule = "material";
      lazy = true;
      setupOpts = {
        disable.background = true;
        lualine_style = "stealth";
        custom_highlights = {
          LineNr.fg = "#252525";
          CursorLineNr.fg = "#ffffff";
        };
        colorscheme = "material";
      };
    };
  };
}

{pkgs, ...}: {
  vim.lazy.plugins = {
    "marko-cerovac/material.nvim" = {
      package = pkgs.vimPlugins.material-nvim;
      setupModule = "material";
      lazy = true;
      setupOpts = {
        disable.background = true;
        lualine_style = "stealth";
      };
    };
  };
}

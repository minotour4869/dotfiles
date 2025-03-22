{
  vim.filetree.nvimTree = {
    enable = true;
    mappings = {
      toggle = "<leader>tr";
    };
    setupOpts = {
      git.enable = true;
      filters = {
        git_ignore = true;
        git_clean = true;
      };
      view.side = "right";
    };
  };
}

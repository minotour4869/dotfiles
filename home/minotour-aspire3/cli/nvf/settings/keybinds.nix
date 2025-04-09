{
  vim.keymaps = [
    # pane navigation
    {
      key = "<C-h>";
      mode = "n";
      silent = true;
      action = "<C-w>h";
    }
    {
      key = "<C-j>";
      mode = "n";
      silent = true;
      action = "<C-w>j";
    }
    {
      key = "<C-k>";
      mode = "n";
      silent = true;
      action = "<C-w>k";
    }
    {
      key = "<C-l>";
      mode = "n";
      silent = true;
      action = "<C-w>l";
    }
    {
      key = "<F3>";
      mode = "i";
      silent = true;
      action = ":pu=strftime('%x %X')";
    }
        
  ];
}

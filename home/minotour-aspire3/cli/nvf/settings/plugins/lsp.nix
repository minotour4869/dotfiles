{
  vim.lsp = {
    enable = true;
    # formatOnSave = true;
    lightbulb.enable = true;
    lspSignature.enable = true;
  };

  vim.languages = {
    enableLSP = true;
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    nix.enable = true;
    markdown.enable = true;
    bash.enable = true;
    clang = {
      enable = true;
      lsp = {
        enable = true;
      };
    };
    css.enable = true;
    html.enable = true;
    ts.enable = true;
    lua.enable = true;
    python.enable = true;
  };
}

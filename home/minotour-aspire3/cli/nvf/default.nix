{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    fzf
  ];
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;
    settings = import ./settings;
  };
}

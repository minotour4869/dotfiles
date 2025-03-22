{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    fzf
    gcc
    nodejs_23
    yarn
    wl-clipboard
    cargo
  ];
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;
    settings = import ./settings;
  };
}

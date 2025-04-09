{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    fzf
    gcc gdb
    nodejs_23
    yarn
    wl-clipboard
    cargo
    eslint_d
    
  ];
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;
    settings = import ./settings;
  };
}

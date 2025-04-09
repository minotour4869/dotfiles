{pkgs, ...}: {
  imports = [
    ./git
    ./fastfetch
    # ./nvim
    ./nvf
    ./zsh
    ./superfile
    # ./spotify # sptd currently not up to date, will reused with spotify_player after its upstream
  ];

    home.packages = with pkgs; [
        steam-run
    ];
}

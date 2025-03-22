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
}

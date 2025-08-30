{pkgs, ...}: 
{
    imports = [
        ./git
        ./fastfetch
        # ./nvim
        ./nvf
        ./zsh
        ./superfile
        ./spotify 
    ];

    home.packages = with pkgs; [
        steam-run
    ];
}

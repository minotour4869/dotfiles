{ pkgs, ... }:
{
	imports = [
		./git
		./fastfetch
		./nvim
		./zsh
		./superfile
		# ./spotify # sptd currently not up to date, will reused with spotify_player after its upstream
	];
}

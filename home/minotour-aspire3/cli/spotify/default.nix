{ pkgs, ... }:
{
	home.packages = with pkgs; [
		spotifyd
		spotify-player
		pass
		pinentry gnupg1
	];

	services.spotifyd = {
		enable = true;
        package = pkgs.spotifyd.override {
            withALSA = true;
            withMpris = true;
        };
	};
}

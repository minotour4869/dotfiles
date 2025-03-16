{ pkgs, ... }:
{
	home.packages = with pkgs; [
		spotifyd
		spotify-tui
		pass
		gnupg1
	];

	services.spotifyd = {
		enable = true;
		settings = {
			username = "314rnrce5edh5b4y3c5wbcin2pmu";
			use_mpris = true;
		};
	};
}

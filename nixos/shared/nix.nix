{stateVersion, ...}:
{
	nix = {
		settings = {
			auto-optimise-store = true;
			trusted-users = [ "root" "@wheel" ];
			experimental-features = "nix-command flakes";
		};
		gc = { # Garbage collector
			automatic = true;
			dates = "weekly";
			options = "--delete-older-than 7d";
		};
		optimise.automatic = true;
	};

	nixpkgs.config = {
		allowBroken = true;
		allowUnfree = true;
		allowUnsupportedItem = true;
	};

	system.stateVersion = stateVersion;
}

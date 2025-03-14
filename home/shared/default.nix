{ user, stateVersion, ... }:
{
	imports = [
		./cli
        ./firefox
	];

	home = {
		inherit stateVersion;
		username = user;
		homeDirectory = "/home/${user}";
	};
}

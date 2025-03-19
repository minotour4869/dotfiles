{ pkgs, ... }:
{
	programs.swaylock = {
		enable = true;
		package = pkgs.swaylock;
	};

	security.pam.services.swaylock = {
		enable = true;
	};
}

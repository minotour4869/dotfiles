{pkgs, ...}:
{
	programs.waybar = {
		enable = true;
		package = pkgs.waybar;
	};

	home.file.".config/waybar" = {
		source = ./waybar;
		recursive = true;
	};
}

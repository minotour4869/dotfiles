{pkgs, ...}:
{
	home.packages = with pkgs; [
		playerctl
	];

	programs.waybar = {
		enable = true;
		package = pkgs.waybar;
	};

	home.file.".config/waybar" = {
		source = ./waybar;
		recursive = true;
	};
}

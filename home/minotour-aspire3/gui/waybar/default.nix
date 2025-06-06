{pkgs, ...}:
{
	home.packages = with pkgs; [
		playerctl
        texlivePackages.nunito
	];

	programs.waybar = {
		enable = true;
		systemd.enable = true;
		package = pkgs.waybar;
	};

	home.file.".config/waybar" = {
		source = ./waybar;
		recursive = true;
	};

    home.file.".local/share/fonts" = {
        source = ./fonts;
        recursive = true;
    };
}

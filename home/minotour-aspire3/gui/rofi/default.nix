{
	home.file.".config/rofi" = {
		source = ./rofi;
		recursive = true;
	};

	programs.rofi = {
		enable = true;
		theme = ./rofi/theme.rasi;
	};
}

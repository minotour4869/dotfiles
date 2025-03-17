{
	home.file.".config/rofi/theme.rasi".source = ./theme.rasi;

	programs.rofi = {
		enable = true;
		theme = ./theme.rasi;
	};
}

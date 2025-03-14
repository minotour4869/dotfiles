{ pkgs, ... }:
{
	home.packages = with pkgs; [
		rofi-wayland kitty hyprland hyprpaper hyprshot
	];

	home.file.".config/hypr" = {
		source = ./hypr;
		recursive = true;
	};
}

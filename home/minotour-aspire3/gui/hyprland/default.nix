{ pkgs, ... }:
{
	home.packages = with pkgs; [
		rofi-wayland kitty hyprland hyprpaper hyprshot
	];

	# programs.hyprland.withUWSM = true;

	home.file.".config/hypr" = {
		source = ./hypr;
		recursive = true;
	};

	wayland.windowManager.hyprland = {
		enable = true;
		systemd.enable = true;
		xwayland.enable = true;
	};
}

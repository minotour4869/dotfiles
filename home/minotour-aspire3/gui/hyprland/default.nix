{ pkgs, ... }:
{
	home.packages = with pkgs; [
		kitty hyprland hyprpaper hyprshot
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
		extraConfig = ''
			source = ./general.conf
			source = ./startup.conf
			source = ./workspaces.conf
			source = ./keybinds.conf
		'';
	};
}

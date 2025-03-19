{ pkgs, system, inputs, ... }:
let
	cursorTheme = {
		name = "Bibata-Modern-Classic";
		package = pkgs.bibata-cursors;
	};
in
{
	imports = [
		./swaylock
		./hyprland
		./rofi
		./kitty
		./nixcord
		./waybar
		./spotify
	];

	home = {
		sessionVariables = {
			GTK_USE_PORTAL = "1";
			NIXOS_OZONE_WL = "1";
			QT_SCALE_FACTOR = "1";
			__GR_VRR_ALLOWED = "0";
			__GR_GSYNC_ALLOWED = "0";
			DISABLE_QT5_COMPAT = "0";
			_JAVA_AWT_WM_NONREPARENTING = "1";
			QT_AUTO_SCREEN_SCALE_FACTOR  = "1";
			QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
		};
		pointerCursor = {
			size = 24;
			gtk.enable = true;
			inherit (cursorTheme) name package;
		};
	};
	gtk = {
		enable = true;
		font.name = "Ubuntu Nerd Font";
		theme = {
			name = "Arc-Dark";
			package = pkgs.arc-theme;
		};
		iconTheme = {
			name = "Arc";
			package = pkgs.arc-icon-theme;
		};
	};

	qt.enable = true;
	qt.platformTheme.name = "qtct";
}

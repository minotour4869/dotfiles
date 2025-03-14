{ pkgs, ... }:
{
	# environment.systemPackages = [
	# 	pkgs.sddm-astronaut
	# ];
	services = {
		dbus.enable = true;
		openssh.enable = true;

		pipewire = {
			enable = true;
			audio.enable = true;
			alsa.enable = true;
			alsa.support32Bit = true;

			pulse.enable = true;
			wireplumber.enable = true;
		};

		# displayManager = {
		# 	# defaultSession = "hyprland";
		# 	sddm = {
		# 		enable = true;
		# 		wayland.enable = true;
		# 		theme = "sddm-astronaut-theme";
		# 	};
		# };
	};
}

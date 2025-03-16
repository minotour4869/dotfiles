{ pkgs, ... }:
{
	# environment.systemPackages = [
	# 	pkgs.pavucontrol
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

		mpd = {
			enable = true;
			startWhenNeeded = true;
			extraConfig = ''
				audio_output {
					type "pipewire"
					name "My PipeWire Output"
				}
			'';
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

{
	services = {
		dbus.enable = true;
		openssh.enable = true;

		pipewire = {
			enable = true;
			alsa.enable = true;
			alsa.support32Bit = true;

			pulse.enable = true;
			jack.enable = true;
			wireplumber.enable = true;
		};

		displayManager.sddm = {
			enable = true;
			wayland.enable = true;
			defaultSession = "Hyprland";
		};
	};
}

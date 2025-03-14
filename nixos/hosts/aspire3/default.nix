{ inputs, pkgs, config, ... }:
{
	imports = [ ./hardware-configuration.nix ];

	hardware = {
		bluetooth = {
			enable = true;
			powerOnBoot = false;
		};
		graphics = {
			enable = true;
			enable32Bit = true;
		};
		# alsa.enable = true;
	};

	services = {
		upower.enable = true;
		blueman.enable = true;
	};
}

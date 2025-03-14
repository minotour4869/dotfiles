{pkgs, ...}: 
{
	imports = [
		./nix.nix
		./programs.nix
        ./users.nix
		./xdg.nix
	];
	boot = {
		tmp.cleanOnBoot = true;
		loader = {
			systemd-boot.enable = false;
			grub = {
				enable = true;
				efiSupport = true;
				device = "nodev";
				useOSProber = true;
			};
			efi.canTouchEfiVariables = true;
		};
	};

	fonts = {
		packages = with pkgs; [
			nerd-fonts.caskaydia-cove
			roboto
			
			font-awesome
		];
		fontconfig = {
			hinting.autohint = true;
			defaultFonts = {
				emoji = [ "Font Awesome" ];
			};
		};
	};

	time.timeZone = "Asia/Ho_Chi_Minh";
	time.hardwareClockInLocalTime = true;
	
	# using ibus, set locales, etc.
	i18n = {
		defaultLocale = "en_US.UTF-8";
		inputMethod = {
			enable = true;
			type = "ibus";
			ibus.engines = with pkgs.ibus-engines; [
				bamboo
			];
		};
	};

	networking = {
		firewall = {
			enable = true;
			allowedTCPPorts = [ 443 80 ];
			allowedUDPPorts = [ 443 80 44857 ];
		};
		networkmanager.enable = true;
	};

	security = {
		polkit.enable = true;
		rtkit.enable = true;
	};	
}

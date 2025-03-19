{pkgs, ...}: 
{
	imports = [
		./nix.nix
		./programs.nix
		./services.nix
		./greetd.nix
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
			nerd-fonts.code-new-roman
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
	# ibus sucks ass, changing to fcitx5
	i18n.inputMethod = {
		enable = true;
		type = "fcitx5";
		fcitx5 = {
			waylandFrontend = true;
			addons = with pkgs; [
				fcitx5-bamboo
				fcitx5-material-color
			];
		};
	};

	networking = {
		firewall = {
			enable = true;
			allowedTCPPorts = [ 443 80 57621 ];
			allowedUDPPorts = [ 443 80 44857 5353 ];
		};
		networkmanager.enable = true;
	};

	security = {
		polkit.enable = true;
		rtkit.enable = true;
		pam.services = {
			swaylock = {};
		};
	};	
}

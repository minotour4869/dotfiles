{lib, pkgs, ...}:
{
	environment = {
		variables = {
			NIXOS_CONFIG_DIR = "$HOME/.config/nixos";
			EDITOR = "nvim";
		};
		systemPackages = with pkgs; [
			nurl zoxide home-manager
		];
	};

	programs = {
        dconf.enable = true;
		adb.enable = true;
		git = {
			enable = true;
			config = {
				init = {
					defaultBranch = "main";
				};
			};
		};

		nano = {
		    enable = true;
		    nanorc = ''
			set nowrap
			set tabstospaces
			set tabsize 4
		    '';
		};
		lazygit.enable = true;
		nh = {
			enable = true;
		};
		zsh = {
			enable = true;
			shellAliases = {
				mv = "mv -iv";
				cp = "cp -riv";

				np = "nix profile";
				hm = "home-manager";
			};
		};
	};
}

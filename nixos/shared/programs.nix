{ pkgs, ... }:
{
	environment = {
		variables = {
			NIXOS_CONFIG_DIR = "$HOME/.config/nixos";
			EDITOR = "nvim";
		};
		systemPackages = with pkgs; [
			killall nurl zoxide home-manager nixfmt-rfc-style nixd nil cloudflared haskellPackages.alsa-mixer unzip
		];
	};

	programs = {
		hyprland = {
			enable = true;
			xwayland.enable = true;
		};
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
		uwsm = {
			enable = true;
			waylandCompositors.hyprland = {
				prettyName = "Hyprland";
				binPath = "/run/current-system/sw/bin/Hyprland";
			};
		};
        steam = {
            enable = true;
            remotePlay.openFirewall = true;
            dedicatedServer.openFirewall = true;
            localNetworkGameTransfers.openFirewall = true;
        };
	};
}

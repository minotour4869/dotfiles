{ pkgs, ... }:
{
	home.packages = with pkgs; [
		delta
	];

	programs = {
		git = {
			enable = true;
			userName = "minotour";
			userEmail = "quoclan9@gmail.com";
			extraConfig = {
				color.ui = true;
				core = {
					editor = "nvim";
					pager = "delta";
				};
				interactive = {
					diffFilter = "delta --color-only";
				};
				delta = {
					navigate = true;
					line-numbers = true;
				};
				diff.colorMoved = "default";
				merge.conflictstyle = "diff3";
			};
		};

		gh = {
			enable = true;
			extensions = with pkgs; [gh-cal gh-eco];
			settings = {
				version = "1";
				prompt = "enabled";
				git_protocol = "ssh";
			};
		};

		lazygit = import ./lazygit.nix;
	};
}

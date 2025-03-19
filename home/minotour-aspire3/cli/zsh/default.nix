{ pkgs, ... }:
{	
	# misc packages for cli things
	home.packages = with pkgs; [
		cava 
		cmatrix
	];

	home.file.".config/zsh" = {
		source = ./dots;
		recursive = true;
	};

	programs = {
		zsh = {
            enable = true;
			dotDir = ".config/zsh";

			enableCompletion = true;
			autosuggestion.enable = true;
			syntaxHighlighting.enable = true;	

			initExtra = ''
				source $HOME/.config/zsh/prompt.zsh
			'';	
			shellAliases = {
				rebuild = "home-manager switch --flake $HOME/.config/nixos#minotour@aspire3";
				ssh = "kitten ssh";
			};
		};
		zoxide = {
			enable = true;
			enableZshIntegration = true;
			options = [ "--cmd cd" ];
		};
	};
}

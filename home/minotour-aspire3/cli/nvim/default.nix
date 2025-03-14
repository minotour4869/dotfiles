{ pkgs, ...}:
{
	home.packages = with pkgs; [
		gcc 
		nodejs_23 
		wl-clipboard 
		cargo
	];
	programs.neovim = {
		enable = true;
	};
	home.file.".config/nvim" = {
		source = ./nvim;
		recursive = true;
	};
}

{ pkgs, ...}:
{
	home.packages = with pkgs; [
		superfile
	];

	home.file.".config/superfile" = {
		source = ./superfile;
		recursive = true;
	};
}

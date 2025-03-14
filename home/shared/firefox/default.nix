{ inputs, pkgs, ... }: 
{
    home.sessionVariables = {
        BROWSER = "firefox";
        MOZ_ENABLE_WAYLAND = 1;
    };

    programs.firefox = {
        enable = true;
        package = pkgs.firefox-wayland;
        profiles.default = import ./profiles pkgs;
    };

	# https://github.com/abrahammurciano/firefox-css-tweaks 
	home.file."$HOME/.mozila/firefox/default/chrome" = {
		source = ./profiles/chrome;
		recursive = true;
	};

    nixpkgs.overlays = [ inputs.nur.overlays.default ];
}

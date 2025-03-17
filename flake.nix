{
	description = "Mino's comfy flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
		home-manager = {
		    url = "github:nix-community/home-manager";
		    inputs.nixpkgs.follows = "nixpkgs";
		};
		nur = {
      		    url = "github:nix-community/NUR";
      		    inputs.nixpkgs.follows = "nixpkgs";
    		};
		mediaplayer = {
			url = "github:nomisreual/mediaplayer";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		zen-browser.url = "github:0xc000022070/zen-browser-flake";
		nixcord.url = "github:kaylorben/nixcord";

		hyprland-git.url = "github:hyprwm/hyprland/main";
        hyprland-xdph-git.url = "github:hyprwm/xdg-desktop-portal-hyprland";
        hyprland-protocols-git.url = "github:hyprwm/xdg-desktop-portal-hyprland";
		hyprland-nix = {
			url = "github:spikespaz/hyprland-nix";
			inputs = {
				hyprland.follows = "hyprland-git";
				hyprland-xdph.follows = "hyprland-xdph-git";
				hyprland-protocols.follows = "hyprland-protocols-git";
			};
		};
	};

	outputs = inputs: 
	{
		nixosConfigurations = import ./nixos inputs;
		homeConfigurations = import ./home inputs;
	};
}

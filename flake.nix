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
		spicetify-nix = {
			url = "github:Gerg-L/spicetify-nix";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		nixcord.url = "github:kaylorben/nixcord";
		hyprland.url = "github:hyprwm/hyprland";
	};

	outputs = inputs: 
	{
		nixosConfigurations = import ./nixos inputs;
		homeConfigurations = import ./home inputs;
	};
}

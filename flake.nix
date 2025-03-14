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
		zen-browser.url = "github:0xc000022070/zen-browser-flake";
		nixcord.url = "github:kaylorben/nixcord";
	};

	outputs = inputs: 
	{
		nixosConfigurations = import ./nixos inputs;
		homeConfigurations = import ./home inputs;
	};
}

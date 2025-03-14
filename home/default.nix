inputs:
let
	inherit (inputs) nixpkgs home-manager;

	makeHome = {
		modules,
		user ? "minotour",
		stateVersion ? "24.05",
		system ? "x86_64-linux",
	}: home-manager.lib.homeManagerConfiguration {
		pkgs = import nixpkgs {
			inherit system;
			config.allowUnfree = true;
		};
		modules = [ ./shared ] ++ modules;
		extraSpecialArgs = { inherit inputs system user stateVersion; };
	};
in
{
	"minotour@aspire3" = makeHome { modules = [ ./minotour-aspire3 ]; };
}

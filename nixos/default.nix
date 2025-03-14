inputs: 
let
	inherit (inputs.nixpkgs.lib) nixosSystem;
	makeHost = {
		modules,
		stateVersion ? "24.05",
		system ? "x86_64-linux",
	}: nixosSystem {
		inherit system;
		modules = [ ./shared ] ++ modules;
		specialArgs = { inherit inputs stateVersion; };
	};
in
{
	aspire3 = makeHost { modules = [ ./hosts/aspire3 ]; };
}

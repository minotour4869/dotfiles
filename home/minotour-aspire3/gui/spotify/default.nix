{ pkgs, ... }:
{
	home.packages = with pkgs; [
		spotify
	];

	network.firewall = {
		allowedTCPPorts = [ 57621 ];
		allowedUDPPorts = [ 5353 ];
	};
}

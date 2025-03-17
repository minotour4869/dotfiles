{ pkgs, ...}:
{
	home.packages = with pkgs; [
		git
		git-credential-manager
	];

	programs.git = {
		extraConfig.credential = {
			helper = "manager";
			"https://github.com".username = "minotour4869";
			credentialStore = "cache";
		};
	};
}

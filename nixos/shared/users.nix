{ config, pkgs, ... }:
let
	ifExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in
{
	# groups = {};

	users.users = {
		minotour = {
			isNormalUser = true;
			shell = pkgs.zsh;
			extraGroups = [ "wheel" "video" "audio" ] ++ ifExist [
				"kvm"
				"docker"
				"podman"
				"adbusers"
				"libvirtd"
				"networkmanager"
			];
		};
	};
}

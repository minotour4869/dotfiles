{ inputs, pkgs, config, ... }:
let
    nvidia-offload = pkgs.writeShellScriptBin "nvidia-offload" ''
        export __NV_PRIME_RENDER_OFFLOAD=1
        export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
        export __GLX_VENDOR_LIBRARY_NAME=nvidia
        export __VK_LAYER_NV_optimus=NVIDIA_only
        exec "$@"
    '';
in
{
	imports = [ ./hardware-configuration.nix ];

    environment.systemPackages = [
        nvidia-offload
        pkgs.cudatoolkit
        pkgs.linuxKernel.packages.linux_zen.xone
    ];
    services.xserver.videoDrivers = ["nvidia"];

	hardware = {
		bluetooth = {
			enable = true;
			powerOnBoot = false;
		};
		graphics = {
			enable = true;
			enable32Bit = true;
		};
        nvidia = {
            modesetting.enable = true;
            nvidiaSettings = true;
            open = false;
            prime = {
                offload = {
                    enable = true;
                    # enableOffloadCmd = true;
                };
                intelBusId = "PCI:0:2:0";
                nvidiaBusId = "PCI:2:0:0";
            };
        };
        xone.enable = true;
        xpad-noone.enable = true;
		# alsa.enable = true;
	};


	services = {
		upower.enable = true;
		blueman.enable = true;
	};
}

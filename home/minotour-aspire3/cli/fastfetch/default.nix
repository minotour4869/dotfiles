let 
	# colors
	cl_ena = "38;2;204;170;135";
	cl_k = "38;2;187;101;136";
	cl_yuki = "38;2;136;137;204";
	cl_amia = "38;2;228;168;202";
in 
{
	programs.fastfetch = {
		enable = true;
		settings = {
			"$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
			logo = {
				type = "file";
				source = ./logo;
				color = {
					"1" = "38;2;183;121;220";
				};
			};
			display = {
				separator = " ";
				constants = [
					"───────────────────────────────────────"
				];
			};
			modules = [
				{
					type = "title";
					key = "";
					keyColor = "${cl_ena}";
					color = {
						user = "${cl_ena}";
						host = "${cl_ena}";
					};
				}
				{
					type = "custom";
					outputColor = "${cl_k}";
					format = ''╭{$1}╮'';
				}
				{
					type = "host";
					key = "󰌢";
					keyColor = "${cl_k}";
				}
				{
					type = "cpu";
					key = "󰍛";
					keyColor = "${cl_k}";
					format = "{name} {freq-max}";
				}
				{
					type = "gpu";
					key = "󰾲";
					keyColor = "${cl_k}";
					format = "{1} {2}";
				}
				{
					type = "display";
					key = "󰍹";
					keyColor = "${cl_k}";
					format = "{width}x{height} @ {refresh-rate}Hz";
				}
				{
					type = "memory";
					key = "";
					keyColor = "${cl_k}";
				}
				{
					type = "disk";
					key = "";
					keyColor = "${cl_k}";
				}
				{
					type = "custom";
					outputColor = "${cl_k}";
					format = ''╰{$1}╯'';
				}
				{
					type = "custom";
					outputColor = "${cl_yuki}";
					format = ''╭{$1}╮'';
				}
				{
					type = "os";
					key = "{icon}";
					keyColor = "${cl_yuki}";
				}
				{
					type = "kernel";
					key = "";
					keyColor = "${cl_yuki}";
				}
				{
					type = "packages";
					key = "󰏗";
					keyColor = "${cl_yuki}";
				}
				{
					type = "shell";
					key = "";
					keyColor = "${cl_yuki}";
				}
				{
					type = "custom";
					outputColor = "${cl_yuki}";
					format = ''╰{$1}╯'';
				}
				{
					type = "custom";
					outputColor = "${cl_amia}";
					format = ''╭{$1}╮'';
				}
				{
					type = "terminal";
					key = "";
					keyColor = "${cl_amia}";
				}
				{
					type = "wm";
					key = "";
					keyColor = "${cl_amia}";
				}
				{
					type = "custom";
					outputColor = "${cl_amia}";
					format = ''╰{$1}╯'';
				}
				"colors"
			];
		};	
    };
}

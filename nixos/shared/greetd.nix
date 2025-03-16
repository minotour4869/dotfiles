{ pkgs, ... }: 
let
	tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
	hyprland-session = "${pkgs.hyprland}/share/wayland-sessions";
	greeting = "Chasing your light, at 25:00";
in 
{
	services.greetd = {
		enable = true;
		settings = {
			default_session = {
				command = ''
					${tuigreet} \
						--greeting "${greeting}" \
						--asterisks \
						--time \
						--remember \
						--remember-session \
						--sessions ${hyprland-session}
				'';
				user = "greeter";
			};
		};
	};

  # this is a life saver.
  # literally no documentation about this anywhere.
  # might be good to write about this...
  # https://www.reddit.com/r/NixOS/comments/u0cdpi/tuigreet_with_xmonad_how/
  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal"; # Without this errors will spam on screen
    # Without these bootlogs will spam on screen
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };
}

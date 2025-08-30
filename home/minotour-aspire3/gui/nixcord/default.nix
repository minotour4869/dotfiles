{ inputs, pkgs, ... }:
{
	imports = [
		inputs.nixcord.homeModules.nixcord
	];

	programs.nixcord = {
		enable = true;
		discord = {
			enable = true;
			vencord = {
                enable = true;
                package = pkgs.vencord;
            };
			openASAR.enable = false;
		};
        quickCss = builtins.readFile ./quickCss.css;
		config = {
			themeLinks = [
				"https://luckfire.github.io/amoled-cord/src/support/betterdiscord/compiled.css"
				"https://raw.githubusercontent.com/DiscordStyles/RadialStatus/deploy/RadialStatus.theme.css"
			];
            useQuickCss = true;
			frameless = true;
			transparent = true;
			plugins = {
				clearURLs.enable = true;
				consoleJanitor.enable = true;
				copyUserURLs.enable = true;
				fixCodeblockGap.enable = true;
				fixSpotifyEmbeds.enable = true;
				friendsSince.enable = true;
				loadingQuotes = {
					enable = true;
					replaceEvents = true;
					enablePluginPresetQuotes = false;
					enableDiscordPresetQuotes = false;
					additionalQuotes = "Chasing your light, at 25:00";
				};
				mentionAvatars.enable = true;
				noF1.enable = true;
				noTypingAnimation.enable = true;
				shikiCodeblocks.enable = true;
				showMeYourName = {
                    enable = true;
                    mode = "nick-user";
                };
				spotifyCrack.enable = true;
				spotifyControls.enable = true;
				typingTweaks.enable = true;
				whoReacted.enable = true;
			};
		};
	};
}

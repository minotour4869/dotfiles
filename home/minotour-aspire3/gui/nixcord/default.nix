{ inputs, pkgs, ... }:
{
	imports = [
		inputs.nixcord.homeModules.nixcord
	];

	programs.nixcord = {
		enable = true;
        discord = {
            enable = true;
            vencord.enable = true;
            openASAR.enable = false;
        };
        quickCss = builtins.readFile ./quickCss.css;
		config = {
			themeLinks = [
				"https://luckfire.github.io/amoled-cord/src/support/betterdiscord/compiled.css"
				"https://raw.githubusercontent.com/DiscordStyles/RadialStatus/deploy/RadialStatus.theme.css"
			];
            autoUpdateNotification = true;
            useQuickCss = true;
			frameless = true;
			transparent = true;
			plugins = {
				ClearURLs.enable = true;
				consoleJanitor.enable = true;
				CopyUserURLs.enable = true;
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
                    includedNames = "{display} [{nick}] (@{user})";
                };
				spotifyCrack.enable = true;
				spotifyControls.enable = true;
				typingTweaks.enable = true;
                validUser.enable = true;
                validReply.enable = true;
				whoReacted.enable = true;
			};
		};
	};
}

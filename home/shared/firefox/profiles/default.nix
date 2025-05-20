pkgs: 
let
    addons = pkgs.nur.repos.rycee.firefox-addons;
in {
    bookmarks = { };
    extensions.packages = with addons; [
        vimium-c
        clearurls
        github-file-icons
		adaptive-tab-bar-colour
  ];

  settings = {
	"toolkit.legacyUserProfileCustomizations.stylesheets" = true;
	"sidebar.revamp" = true;
	"sidebar.verticalTabs" = true;
	"sidebar.visibility" = "expand-on-hover";
  };

    userChrome = '' '';
    userContent = '' '';

    search = {
        force = true;
        default = "google";
        engines = {
            "bing".metaData.hidden = true;
            "google".metaData.alias = "@g";
            "Nix Packages" = {
                definedAliases = ["@np"];
                urls = [
                    {
                        template = "https://search.nixos.org/packages";
                        params = [
                            { name = "channel"; value = "unstable"; }
                            { name = "type"; value = "packages"; }
                            { name = "query"; value = "{searchTerms}"; }
                        ];
                    }
                ];
            };

            "youtube" = {
                definedAliases = ["@yt"];
                urls = [
                {
                    template = "https://youtube.com/results";
                    params = [ { name = "search_query"; value = "{searchTerms}"; } ];
                }
            ];
        };
     };
  };
}

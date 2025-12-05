{ pkgs, ... }:
let
    inherit (pkgs) fetchFromGitHub;
    inherit (pkgs.vimUtils) buildVimPlugin;
in
{
    vim.extraPlugins = {
        "assistant.nvim" = {
            package = buildVimPlugin {
                name = "assistant.nvim";
                src = fetchFromGitHub {
                    owner = "A7Lavinraj";
                    repo = "assistant.nvim";
                };
            };
        };
    };
}

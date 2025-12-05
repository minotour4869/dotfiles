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
                    rev = "d34d2cf8ebd551b26193e70354d87571c980ca61";
                    hash = "sha256-S8iEUEpse6UeR0HhnYImaDStjzCtbCwiU2SS2Tt1LBY=";
                };
            };
        };
    };
}

{ pkgs, ... }:
let
    inherit (pkgs) fetchFromGitHub;
    inherit (pkgs.vimUtils) buildVimPlugins;
in
{
    vim.extraPlugins = {
        "assistant.nvim" = {
            package = buildVimPlugins {
                name = "assistant.nvim";
                src = fetchFromGitHub {
                    owner = "A7Lavinraj";
                    repo = "assistant.nvim";
                };
            };
            setup = ''
                require('assistant.nvim').setup {}
            '';
        };
    };
}

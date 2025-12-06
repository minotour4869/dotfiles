{ pkgs, ... }:
let
    assistant-nvim = pkgs.vimUtils.buildVimPlugin {
        name = "assistant.nvim";
        src = pkgs.fetchFromGitHub {
            owner = "A7Lavinraj";
            repo = "assistant.nvim";
            rev = "d34d2cf8ebd551b26193e70354d87571c980ca61";
            hash = "sha256-S8iEUEpse6UeR0HhnYImaDStjzCtbCwiU2SS2Tt1LBY=";
        };
    };
in
{
    vim.lazy.plugins = {
        vimplugin-assistant.nvim = {
            package = assistant-nvim.overrideAttrs {
                doCheck = false;
            };
            setupModule = "assistant.nvim";
            setupOpts = {};
            lazy = false;
            keys = [
                {
                    mode = "n";
                    key = "<leader>a";
                    action = ":Assistant<CR>";
                    desc = "assistant.nvim";
                }
            ];
        };
    };
}

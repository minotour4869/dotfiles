{ inputs, pkgs, ... }:
let
    assistant-source = pkgs.vimUtils.buildVimPlugin {
        name = "assistant.nvim";
        src = inputs.assistant-nvim;
    };
in
{
    vim.lazy.plugins = {
        "vimplugin-assistant.nvim" = {
            package = assistant-source.overrideAttrs {
                nvimSkipModules = [
                    "assistant.mappings"
                ];
            };
            setupModule = "assistant";
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

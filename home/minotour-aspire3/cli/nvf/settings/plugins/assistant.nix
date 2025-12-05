{ pkgs, ... }:
{
    vim.startPlugins = [{
        pname = "assistant.nvim";
        version = "v4.2.0";

        src = pkgs.fetchFromGitHub {
            owner = "A7Lavinraj";
            repo = "assistant.nvim";
        };

        optional = false;

        dependencies = [];
    }];
}

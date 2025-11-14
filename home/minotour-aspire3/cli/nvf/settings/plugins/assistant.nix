{pkgs,...}:
{
    config.vim.lazy.plugins = {
        "assistant.nvim" = {
            package = pkgs.fetchFromGitHub {
                owner = "A7Lavinraj";
                repo = "assistant.nvim";
                rev = "";
                hash = "";
            };
            lazy = false;
            keys = [
                {
                    key = "<leader>a";
                    action = ":Assistant<CR>";
                    description = "Assisting this contest";
                }
            ];
        };
    };
}

{
    vim.filetree.nvimTree = {
        enable = true;
        mappings = {
            toggle = "<leader>tr";
        };
        setupOpts = {
            git.enable = true;
            disable_netrw = true; 
            filters = {
                git_ignored = true;
                # git_clean = true;
            };
            view = {
                side = "right";
                width = {
                    min = 30;
                    max = 40;
                    padding = 1;
                };
            };
        };
    };
}

{
    vim.statusline.lualine = {
        enable = true;
        sectionSeparator = {
            left = "";
            right = "";
        };
        activeSection = {
            a = [
                ''
                    { "mode", separator = { left = '' }, right_padding = 2 }
                ''
            ];
            b = [
                ''
                    "filename"
                ''
                ''
                    "branch"
                ''
            ];
            c = [
                ''
                    "%="
                ''
            ];
            x = [];
            y = [
                ''
                    "filetype"
                ''
                ''
                    "progress"
                ''
            ];
            z = [
                ''
                    { 'location', separator = { right = '' }, left_padding = 2 }
                ''
            ];
        };
        inactiveSection = {
            a = [
                ''
                    "filename"
                ''
            ];
            b = [];
            c = [];
            x = [];
            y = [];
            z = [
                ''
                    "location"
                ''
            ];
        };
    };
}

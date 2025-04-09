{
    vim.autocmds = {
        "" = {
            pattern = [
                "*.cpp"
            ];
            once = true;
            event = [
                "BufNewFile"
            ];
            desc = "Add timestamp to cpp file";
            command = ''
                fun TimeStamp()
                    if line("$") > 1
                        let l = 1
                    else
                        let l = line("$")
                    endif
                    exe "1," .. l .. "g/created: "
                endfun
            '';
        };
    };
}

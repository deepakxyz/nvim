require("toggleterm").setup{
size=20,
open_mapping = [[<c-\>]],
hide_numbers = true,
close_on_exit = tue, -- close the terminal window when the process exits
shell = vim.o.shell, -- change the default shell
direction="float",
auto_scroll = true,
float_opts = {
    border = "curved"
}

}

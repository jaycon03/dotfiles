require("harpoon").setup({ ... })

global_settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = false,
}

--terminal
--projects = {
--    -- Yes $HOME works
--    ["$HOME/personal/vim-with-me/server"] = {
--        term = {
--            cmds = {
--                "./env && npx ts-node src/index.ts"
--            }
--        }
--    }
--}

--keybindings
vim.keymap.set("n", "<leader>a", ":lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set("n", "<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
vim.keymap.set("n", "<leader>i", ":lua require('harpoon.ui').nav_prev()<CR>")
vim.keymap.set("n", "<leader>o", ":lua require('harpoon.ui').nav_next()<CR>")
vim.keymap.set("n", "<leader>o", ":lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set("n", "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>")

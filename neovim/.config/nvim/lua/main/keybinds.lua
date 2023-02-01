-- require('leap').add_default_mappings()

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>Ps', ':PackerSync<CR>')
vim.keymap.set('n', '<C-s>', ':write<CR>')
vim.keymap.set('n', '<A-s>', ':source<CR>')
vim.keymap.set('n', '<leader>S', ':SearchSession<CR>')
vim.keymap.set('n', '<C-w>', ':tabclose<CR>')

--- ThePrimeagen. (2023, January 11). init.lua. Retrieved from https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua ---

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
-- TODO: search what is this `zz`
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "<C-j>", "<C-d>", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-u>zz", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])


vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--- ThePrimeagen. (2023, January 11). init.lua. Retrieved from https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua ---

--- xxx  ---

--- xxx  ---
if vim.g.vscode then

    -- Folding
    vim.keymap.set("n", "za", function() vim.fn.VSCodeNotify("editor.toggleFold") end)
    vim.keymap.set("n", "zc", function() vim.fn.VSCodeNotify("editor.foldRecursively") end)
    vim.keymap.set("n", "zC", function() vim.fn.VSCodeNotify("editor.foldAll") end)
    vim.keymap.set("n", "zO", function() vim.fn.VSCodeNotify("editor.unfoldAll") end)
    vim.keymap.set("n", "zo", function() vim.fn.VSCodeNotify("editor.unfoldRecursively") end)
    vim.keymap.set("n", "zp", function() vim.fn.VSCodeNotify("editor.gotoParentFold") end)

    -- All remaps
    vim.keymap.set("", "zy", function() vim.fn.VSCodeNotify("toggleTypewriter") end)

    -- Normal remaps
    vim.keymap.set("n", "zh", function() vim.fn.VSCodeNotify("yo1dog.cursor-trim.lTrimCursor") end)
    vim.keymap.set("n", "zl", function() vim.fn.VSCodeNotify("yo1dog.cursor-trim.rTrimCursor") end)
    vim.keymap.set("n", "zi", function() vim.fn.VSCodeNotify("yo1dog.cursor-trim.trimCursor") end)
    vim.keymap.set("n", "[f", function() vim.fn.VSCodeNotify("workbench.view.search.focus") end)
    vim.keymap.set("n", "]f", function() vim.fn.VSCodeNotify("workbench.action.replaceInFiles") end)
    vim.keymap.set("n", "gD", function() vim.fn.VSCodeNotify("editor.action.revealDefinitionAside") end)
    vim.keymap.set("n", "<leader>s", function() vim.fn.VSCodeNotify("editor.action.toggleStickyScroll") end)
    vim.keymap.set("n", "=<", function() vim.fn.VSCodeNotify("editor.action.trimTrailingWhitespace") end)
    vim.keymap.set("n", "gl", function() vim.fn.VSCodeNotify("editor.action.openLink") end)
    vim.keymap.set("n", "<C-k>", function()
        vim.fn.VSCodeCall("editor.action.insertLineBefore")
        vim.cmd("norm k")
    end)
        vim.keymap.set("n", "<<", function() vim.fn.VSCodeNotify("editor.action.outdentLines") end)
    vim.keymap.set("n", ">>", function() vim.fn.VSCodeNotify("editor.action.indentLines") end)
    vim.keymap.set("n", "gcc", function() vim.fn.VSCodeNotify("editor.action.commentLine") end)

    -- Visual remaps
    vim.keymap.set("v", "gs", function() vim.fn.VSCodeNotifyVisual("codesnap.start", true) end)
    vim.keymap.set("v", "<", function() vim.fn.VSCodeNotifyVisual("editor.action.outdentLines", false) end)
    vim.keymap.set("v", ">", function() vim.fn.VSCodeNotifyVisual("editor.action.indentLines", false) end)
    vim.keymap.set("v", "gc", function() vim.fn.VSCodeNotifyVisual("editor.action.commentLine") end)

    -- Insert remaps
    vim.keymap.set("i", "<C-k>", function() vim.fn.VSCodeNotify("editor.action.insertLineBefore") end)
else
    -- Not vscode
    vim.keymap.set("n", "zp", "vaBo^<Esc>")
end

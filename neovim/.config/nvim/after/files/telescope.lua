local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set("n", "<leader>sg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sG', builtin.git_files, {})
--
local telescope = require("telescope")

telescope.setup({
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--vimgrep",
	    "--ignore",
	    "--hidden"
        },
        file_ignore_patterns = {
            "%.png",
        },
        prompt_prefix = "» ",
        selection_caret = " ",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        path_display = { "smart" },
        dynamic_preview_title = true,
        border = true,
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        set_env = {
            ["COLORTERM"] = "truecolor",
        },
        layout_config = {
            prompt_position = "top",
            height = 0.8,
        },
    },
    pickers = {
        buffers = {
            sort_mru = true,
            ignore_current_buffer = true,
            mappings = {
                i = {
                    ["<c-d>"] = "delete_buffer", -- this overrides the built in preview scroller
                    ["<c-b>"] = "preview_scrolling_down",
                },
                n = {
                    ["<c-d>"] = "delete_buffer", -- this overrides the built in preview scroller
                    ["<c-b>"] = "preview_scrolling_down",
                },
            },
        },
    },
    extensions = {
        fzf = {
            fuzzy = true, -- let me make typos in file names please
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        },
        ["ui-select"] = {
            require("telescope.themes").get_cursor(),
        },
    },
      --     mappings = {
      -- i = {
      --   ["<C-n>"] = vim.actions.move_selection_next,
      --   ["<C-p>"] = actions.move_selection_previous,
      --   ["<C-c>"] = actions.close,
      --   ["<C-j>"] = actions.cycle_history_next,
      --   ["<C-k>"] = actions.cycle_history_prev,
      --   ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
      --   ["<CR>"] = actions.select_default,
      -- },
      -- n = {
      --   ["<C-n>"] = actions.move_selection_next,
      --   ["<C-p>"] = actions.move_selection_previous,
      --   ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
      -- },
  -- },

})

-- --  telescope.load_extension("fzf")
-- --  telescope.load_extension("dap")
-- --  telescope.load_extension("ui-select")
-- -- 
-- -- 

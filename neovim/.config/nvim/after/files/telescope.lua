local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', 'F1', builtin.find_files, {})
vim.keymap.set("n", "<leader>sg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
-- vim.keymap.set("n", "<leader>sg", "builtin.resume()")
-- vim.keymap.set('n', '<leader>ss', ":Telescope resume<CR>")
vim.keymap.set('n', '<leader>ss', builtin.resume, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sG', builtin.git_files, {})
vim.keymap.set('n', '<leader>e', ":Telescope file_browser<CR>")
--
local telescope = require("telescope")
require('telescope').load_extension('media_files')
require("telescope").load_extension "file_browser"
-- --  telescope.load_extension("fzf")
-- --  telescope.load_extension("dap")
telescope.load_extension("ui-select")

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
			"^.git/"
		},
		prompt_prefix = "» ",
		selection_caret = " ",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "vertical",
		path_display = { "smart" },
		dynamic_preview_title = true,
		border = true,
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		color_devicons = true,
		set_env = {
			["COLORTERM"] = "truecolor",
		},
		layout_config = {
			prompt_position = "bottom",
			preview_height = 0.4,
			-- height = 0.8,
			height = vim.o.lines,
			width = vim.o.columns,
		},

	},
	pickers = {
		buffers      = {
			sort_mru = true,
			ignore_current_buffer = true,
			mappings = {
				i = {
					["<c-d>"] = "delete_buffer", -- this overrides the built in preview scroller
					["<c-b>"] = "preview_scrolling_down",
					["<c-j>"] = "cycle_history_next",
					["<c-k>"] = "cycle_history_previous",
				},
				n = {
					["<c-d>"] = "delete_buffer", -- this overrides the built in preview scroller
					["<c-b>"] = "preview_scrolling_down",
					["<c-j>"] = "cycle_history_next",
					["<c-k>"] = "cycle_history_previous",
				},
			},
		},
		find_files   = {
			hidden = true
		},
		file_browser = {
			hidden = true
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
			require("telescope.themes").get_dropdown {}
		},
		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				["i"] = {
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings
				},
			},

		}
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

-- --
-- --

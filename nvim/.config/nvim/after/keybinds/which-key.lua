-- TODO: finish file

--       mappings = {
--       [";"] = { "<cmd>Alpha<CR>", "Dashboard" },
--       ["w"] = { "<cmd>w!<CR>", "Save" },
--       ["S"] = { "<cmd>SearchSession<cr>", "Search sessions" },
--       ["q"] = { "<cmd>lua require('lvim.utils.functions').smart_quit()<CR>", "Quit" },
--       ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle" },
--       ["c"] = { "<cmd>BufferKill<CR>", "Close Buffer" },
--       ["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
--       -- ["f"] = { require("lvim.core.telescope.custom-finders").find_project_files, "Find File" },
--       b = {
--         name = "Buffers",
--         j = { "<cmd>BufferLinePick<cr>", "Jump" },
--         f = { "<cmd>Telescope buffers<cr>", "Find" },
--         b = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
--         n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
--         -- w = { "<cmd>BufferWipeout<cr>", "Wipeout" }, 
--         e = {
--           "<cmd>BufferLinePickClose<cr>",
--           "Pick which buffer to close",
--         },
--         h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
--         l = {
--           "<cmd>BufferLineCloseRight<cr>",
--           "Close all to the right",
--         },
--         D = {
--           "<cmd>BufferLineSortByDirectory<cr>",
--           "Sort by directory",
--         },
--         L = {
--           "<cmd>BufferLineSortByExtension<cr>",
--           "Sort by language",
--         },
--       },
--       d = {
--         name = "Debug",
--         t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
--         b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
--         c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
--         C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
-- 
--         g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
--         i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
--         o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
--         u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
--         p = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
--         r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
--         s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
--         q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
--         U = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
--       },
--       p = {
--         name = "Packer",
--         c = { "<cmd>PackerCompile<cr>", "Compile" },
--         i = { "<cmd>PackerInstall<cr>", "Install" },
--         r = { "<cmd>lua require('lvim.plugin-loader').recompile()<cr>", "Re-compile" },
--         s = { "<cmd>PackerSync<cr>", "Sync" },
--         S = { "<cmd>PackerStatus<cr>", "Status" },
--         u = { "<cmd>PackerUpdate<cr>", "Update" },
--       },
-- 
--       -- " Available Debug Adapters:
--       -- "   https://microsoft.github.io/debug-adapter-protocol/implementors/adapters/
--       -- " Adapter configuration and installation instructions:
--       -- "   https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
--       -- " Debug Adapter protocol:
--       -- "   https://microsoft.github.io/debug-adapter-protocol/
--       -- " Debugging
--       -- main g
--       g = {
--         name = "Git",
--         g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", "Lazygit" },
--         j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
--         k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
--         l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
--         p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
--         r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
--         R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
--         s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
--         u = {
--           "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
--           "Undo Stage Hunk",
--         },
--         o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
--         b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
--         c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
--         C = {
--           "<cmd>Telescope git_bcommits<cr>",
--           "Checkout commit(for current file)",
--         },
--         d = {
--           "<cmd>Gitsigns diffthis HEAD<cr>",
--           "Git Diff",
--         },
--       },
--       l = {
--         name = "LSP",
--         a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
--         d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
--         w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
--         f = { require("lvim.lsp.utils").format, "Format" },
--         i = { "<cmd>LspInfo<cr>", "Info" },
--         I = { "<cmd>Mason<cr>", "Mason Info" },
--         j = {
--           vim.diagnostic.goto_next,
--           "Next Diagnostic",
--         },
--         k = {
--           vim.diagnostic.goto_prev,
--           "Prev Diagnostic",
--         },
--         l = { vim.lsp.codelens.run, "CodeLens Action" },
--         q = { vim.diagnostic.setloclist, "Quickfix" },
--         r = { vim.lsp.buf.rename, "Rename" },
--         s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
--         S = {
--           "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
--           "Workspace Symbols",
--         },
--         e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
--       },
--       L = {
--         name = "+LunarVim",
--         c = {
--           "<cmd>edit " .. get_config_dir() .. "/config.lua<cr>",
--           "Edit config.lua",
--         },
--         f = {
--           "<cmd>lua require('lvim.core.telescope.custom-finders').find_lunarvim_files()<cr>",
--           "Find LunarVim files",
--         },
--         g = {
--           "<cmd>lua require('lvim.core.telescope.custom-finders').grep_lunarvim_files()<cr>",
--           "Grep LunarVim files",
--         },
--         k = { "<cmd>Telescope keymaps<cr>", "View LunarVim's keymappings" },
--         i = {
--           "<cmd>lua require('lvim.core.info').toggle_popup(vim.bo.filetype)<cr>",
--           "Toggle LunarVim Info",
--         },
--         I = {
--           "<cmd>lua require('lvim.core.telescope.custom-finders').view_lunarvim_changelog()<cr>",
--           "View LunarVim's changelog",
--         },
--         l = {
--           name = "+logs",
--           d = {
--             "<cmd>lua require('lvim.core.terminal').toggle_log_view(require('lvim.core.log').get_path())<cr>",
--             "view default log",
--           },
--           D = {
--             "<cmd>lua vim.fn.execute('edit ' .. require('lvim.core.log').get_path())<cr>",
--             "Open the default logfile",
--           },
--           l = {
--             "<cmd>lua require('lvim.core.terminal').toggle_log_view(vim.lsp.get_log_path())<cr>",
--             "view lsp log",
--           },
--           L = { "<cmd>lua vim.fn.execute('edit ' .. vim.lsp.get_log_path())<cr>", "Open the LSP logfile" },
--           n = {
--             "<cmd>lua require('lvim.core.terminal').toggle_log_view(os.getenv('NVIM_LOG_FILE'))<cr>",
--             "view neovim log",
--           },
--           N = { "<cmd>edit $NVIM_LOG_FILE<cr>", "Open the Neovim logfile" },
--           p = {
--             "<cmd>lua require('lvim.core.terminal').toggle_log_view(get_cache_dir() .. '/packer.nvim.log')<cr>",
--             "view packer log",
--           },
--           P = { "<cmd>edit $LUNARVIM_CACHE_DIR/packer.nvim.log<cr>", "Open the Packer logfile" },
--         },
--         r = { "<cmd>LvimReload<cr>", "Reload LunarVim's configuration" },
--         u = { "<cmd>LvimUpdate<cr>", "Update LunarVim" },
--       },
--       s = {
--         name = "Search (treesitter)",
--         -- custom
--         s = { "<cmd>Telescope resume<cr>", "Resume previous search" },
--         a = { "<cmd>Telescope pickers<cr>", "All previous searches" },
--         -- builtin
--         b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
--         C = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
--         -- f = { "<cmd>Telescope find_files<cr>", "Find File" },
--         f = { "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", "Find Files"},
--         h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
--         H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
--         M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
--         r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
--         R = { "<cmd>Telescope registers<cr>", "Registers" },
--         g = { "<cmd>Telescope live_grep<cr>", "Grep" },
--         k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
--         c = { "<cmd>Telescope commands<cr>", "Commands" },
--         p = {
--           "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
--           "Colorscheme with Preview",
--         },
--       },
--       T = {
--         name = "Treesitter",
--         i = { ":TSConfigInfo<cr>", "Info" },
--       },
--     },
--   }
-- end
-- 

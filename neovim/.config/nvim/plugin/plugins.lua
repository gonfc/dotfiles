-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- TODO: Refactor into a function: `'nvim/...' \n'theprimeagen/...'
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use { 'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
			{ "nvim-telescope/telescope-live-grep-args.nvim" }
		},
		config = function() require("telescope").load_extension("live_grep_args") end
	}
	use {
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup {

			}
		end
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			-- Snippet Collection (Optional)
			{ 'rafamadriz/friendly-snippets' },
		}
	}
	use 'famiu/bufdelete.nvim'
	use { 'nvim-telescope/telescope-fzf-native.nvim',
		run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
	use 'mfussenegger/nvim-dap'
	use 'tpope/vim-fugitive'
	use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
	use 'tpope/vim-fugitive'
	use { "akinsho/toggleterm.nvim", tag = '*', config = function() require("toggleterm").setup() end }
	use { 'nvim-telescope/telescope-dap.nvim' }
	if packer_bootstrap then
	    require('packer').sync()
	  end
	use { 'vim-airline/vim-airline' }
	use { 'img-paste-devs/img-paste.vim' }
	use { 'ekickx/clipboard-image.nvim' }
	use { 'nvim-telescope/telescope-media-files.nvim' }
	use { 'nvim-lua/popup.nvim' }
	use({ 'jakewvincent/mkdnflow.nvim',
		rocks = 'luautf8', -- Ensures optional luautf8 dependency is installed
		config = function()
			require('mkdnflow').setup({})
		end
	})
	use({ 'mrjones2014/tldr.nvim', requires = { 'nvim-telescope/telescope.nvim' } })
	use { "nvim-telescope/telescope-file-browser.nvim" }
	use { 'nvim-telescope/telescope-ui-select.nvim' }
	use { 'rmagatti/session-lens', requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' } }
	use { 'dense-analysis/ale' } -- :h ale; :ALEInfo
end)

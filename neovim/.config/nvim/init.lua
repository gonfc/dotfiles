-- lua vim.opt.runtimepath:append(',~/.config/nvim/lua')
-- :runtime! after/**/*.lua
vim.opt.rtp:append(vim.fn.stdpath "config" .. "/after/appearance")
vim.opt.rtp:append(vim.fn.stdpath "config" .. "/after/files")
vim.opt.rtp:append(vim.fn.stdpath "config" .. "/after/keybinds")
vim.opt.rtp:append(vim.fn.stdpath "config" .. "/after/lsp")


--vim.builtin.treesitter.highlight.enable = true

require('main')
-- Past error due to permissions. Fix is: `chmod 755 config.lua`
-- require('config')

 local function source_files_from_dir(directory)
   for _, file in pairs(vim.fn.readdir(directory)) do
     local file = directory .. '/' .. file
     if vim.fn.filereadable(file) then
       vim.fn.execute('source ' .. file)
     end
   end
 end

 -- load all additional configs
 local lua_config_dir = vim.fn.stdpath('config') .. '/after'
 local config_dirs = { 'appearance', 'files', 'keybinds', 'lsp' }
 for _, dir in pairs(config_dirs) do
   source_files_from_dir(lua_config_dir .. '/' .. dir)
 end

print('Greetings from Neovim!')

-- My different approach for nvim configuration (easier for beginners and simpler to maintain). (2023, January 09). Retrieved from https://www.reddit.com/r/neovim/comments/rgo1sx/my_different_approach_for_nvim_configuration
-- 
-- local pluginList = {
--   "nvim-lua/popup.nvim", 
--   "nvim-lua/plenary.nvim",  
--   { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }, 
--   "wbthomason/packer.nvim",
--   -- etc ...
-- }
-- 
-- packer.startup(function()
--   for index,plugin in ipairs(pluginList) do
--     use(plugin)
--   end
-- end)
-- 
-- for index, plugin in ipairs(pluginList) do
--   utils.loadPluginConfig(plugin)
-- end
-- 
-- -- utils.lua (relevant section)
-- 
-- function M.loadPluginConfig(plugin)
--   if (type(plugin) == "table") then
--     plugin = plugin[1]
--   end
--   local slashPosition = string.find(plugin, "/")
--   local pluginName = plugin:sub(slashPosition + 1)
-- 
--   local dotPosition = string.find(pluginName, "%.")
-- 
--   if dotPosition then
--     pluginName = pluginName:sub(0, dotPosition - 1)
--   end
-- 
--   if M.file_exists(CONFIG.nvim_plugin_config_path .. pluginName .. ".lua") then
--     require ("plugins/" .. pluginName)
--   end
-- end

if vim.g.vscode then

   function FeedKeysCorrectly(keys)
      local feedableKeys = vim.api.nvim_replace_termcodes(keys, true, false, true)
      vim.api.nvim_feedkeys(feedableKeys, "n", true)
   end

   function Multiply() FeedKeysCorrectly('"ryl"r' .. vim.v.count1 .. "p") end

   function Multiply_Visual() FeedKeysCorrectly('"rygv<Esc>"r' .. vim.v.count1 .. "p") end

   vim.opt.number         = true
   vim.opt.relativenumber = true
   vim.opt.tabstop        = 3
   vim.opt.smartindent    = true
   vim.opt.mouse          = "a"
   vim.opt.ignorecase     = true
   vim.opt.smartcase      = true
   vim.opt.hlsearch       = false
   vim.g.mapleader        = ","
   vim.opt.syntax         = "enable"

   vim.opt.termguicolors = true
   vim.opt.background    = "dark"
   vim.cmd("colorscheme tender")

   vim.g.camelcasemotion_key = "<leader>"
   vim.g.targets_nl          = "nh"

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

local km = vim.keymap

-- km.set("n", "<leader>ff", require("fzf-lua").files, { desc = "FZF Files" })
km.set("n", "<leader>fr", require("fzf-lua").registers, { desc = "Registers" })
km.set("n", "<leader>fm", require("fzf-lua").marks, { desc = "Marks" })
km.set("n", "<leader>fk", require("fzf-lua").keymaps, { desc = "Keymaps" })
-- km.set("n", "<leader>fw", require("fzf-lua").live_grep, { desc = "FZF Grep" })
km.set("n", "<leader>fb", require("fzf-lua").buffers, { desc = "FZF Buffers" })
-- km.set("n", "<leader>fj", require("fzf-lua").helptags, { desc = "Help Tags" })
-- km.set("n", "<leader>fgc", require("fzf-lua").git_bcommits, { desc = "Browse File Commits" })
-- km.set("n", "<leader>fgs", require("fzf-lua").git_status, { desc = "Git Status" })
km.set("n", "<leader>fs", require("fzf-lua").spell_suggest, { desc = "Spelling Suggestions" })
-- km.set("n", "fd", require("fzf-lua").lsp_definitions, { desc = "Jump to Definition" })
km.set(
	"n",
	"<leader>tb",
	":lua require'fzf-lua'.lsp_document_symbols({winopts = {preview={wrap='wrap'}}})<cr>",
	{ desc = "Document Symbols" }
)
-- km.set("n", "<leader>fcr", require("fzf-lua").lsp_references, { desc = "LSP Refe:ences" })
-- km.set(
-- 	"n",
-- 	"<leader>cd",
-- 	":lua require'fzf-lua'.diagnostics_document({fzf_opts = { ['--wrap'] = true }})<cr>",
-- 	{ desc = "Document Diagnostics" }
-- )
--
-- km.set(
-- 	"n",
-- 	"<leader>fa",
-- 	":lua require'fzf-lua'.lsp_code_actions({ winopts = {relative='cursor',row=1.01, col=0, height=0.2, width=0.4} })<cr>",
-- 	{ desc = "Code Actions" }
-- )

-- Auto-Session Keymaps
km.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
km.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

km.set("n", "<leader>ct", ":ThemeToggle<CR>", { desc = "Toggle theme selector" })

-- Theme Keymaps
km.set("n", "<leader>ct", ":ThemeToggle<CR>", { desc = "Toggle through themes" })
km.set("n", "<leader>cs", ":ThemeSelect<CR>", { desc = "Select theme from menu" })

-- Telescope Keybinds
km.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
km.set("n", "<leader>fe", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
km.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
km.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
km.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- Hop Keybinds
km.set("n", "<leader>hl", "<cmd>HopLine<cr>", { desc = "Hop Line" })

--Go Extended Keybinds
km.set("n", "<leader>god", "<cmd>GoDebug<cr>", { desc = "Go Debugger: start" })
km.set("n", "<leader>gods", "<cmd>GoDebug -s<cr>", { desc = "Go Debugger: stop" })
km.set("n", "<leader>godr", "<cmd>GoDebug -r<cr>", { desc = "Go Debugger: run" })
km.set("n", "<leader>godb", "<cmd>GoDebug -b<cr>", { desc = "Go Debugger: breakpoint" })
km.set("n", "<leader>gofs", "<cmd>GoFillStruct<cr>", { desc = "Go Fill: Struct" })
km.set("n", "<leader>gofw", "<cmd>GoFillSwitch<cr>", { desc = "Go Fill: Switch" })
km.set("n", "<leader>gor", "<cmd>GoIfErr<cr>", { desc = "Go Fill: If Error" })
km.set(
	"n",
	"<leader>gofp",
	"<cmd>GoFixPlurals<cr>",
	{ desc = "change func foo(b int, a int, r int) -> func foo(b, a, r int)" }
)

km.set("n", "<leader>gota", "<cmd>GoAddTag<cr>", { desc = "Go Tag: Add" })
km.set("n", "<leader>gotr", "<cmd>GoRmTag<cr>", { desc = "Go Tag: Remove" })
km.set("n", "<leader>gotc", "<cmd>GoClearTag<cr>", { desc = "Go Tag: Clear" })

km.set("n", "<leader>bbd", "<cmd>lua require('dropbar.api').pick()<cr>", { desc = "Dropbar Pick" })

-- Dap Keybinds
km.set("n", "<Leader>dt", "<CR>DapUiToggle<CR>", { desc = "Debug: UI Toggle" })
km.set("n", "<Leader>db", ":DapToggleBreakpoint<CR>", { desc = "Debug: Breakpoint" })
km.set("n", "<Leader>dc", "<CR>DapContinue<CR>", { desc = "Debug: Continue" })
km.set("n", "<Leader>dr", ":lua require('dapui').open({reset = true})<CR>", { desc = "Debug: Run" })

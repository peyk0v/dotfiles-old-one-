local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

-- the code under this comment is the default settings of lsp
--[[

---
-- LSP Support 
---
	-- LSP actions
	map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
	map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
	map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
	map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
	map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
	map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
	map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
	map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
	map('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
	map('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

	-- Diagnostics
	map('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
	map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
	map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')


---
-- Autocompletion
---

	-- confirm selection
	['<CR>'] = cmp.mapping.confirm({select = false}),
	['<C-y>'] = cmp.mapping.confirm({select = false}),

	-- navigate items on the list
	['<Up>'] = cmp.mapping.select_prev_item(select_opts),
	['<Down>'] = cmp.mapping.select_next_item(select_opts),
	['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
	['<C-n>'] = cmp.mapping.select_next_item(select_opts),

	-- scroll up and down in the completion documentation
	['<C-f>'] = cmp.mapping.scroll_docs(5),
	['<C-u>'] = cmp.mapping.scroll_docs(-5),

	-- toggle completion
	['<C-e>'] = cmp.mapping(function(fallback)

	-- go to next placeholder in the snippet
	['<C-d>'] = cmp.mapping(function(fallback)

	-- go to previous placeholder in the snippet
	['<C-b>'] = cmp.mapping(function(fallback)

	-- when menu is visible, navigate to next item
	-- when line is empty, insert a tab character
	-- else, activate completion
	['<Tab>'] = cmp.mapping(function(fallback)

	-- when menu is visible, navigate to previous item on list
	-- else, revert to default behavior
	['<S-Tab>'] = cmp.mapping(function(fallback)

]]--

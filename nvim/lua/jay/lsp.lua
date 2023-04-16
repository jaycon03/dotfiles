vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guifg=#13111f]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=#313244 guibg=#13111f]]

local border = {
      {"🭽", "FloatBorder"},
      {"▔", "FloatBorder"},
      {"🭾", "FloatBorder"},
      {"▕", "FloatBorder"},
      {"🭿", "FloatBorder"},
      {"▁", "FloatBorder"},
      {"🭼", "FloatBorder"},
      {"▏", "FloatBorder"},
}

-- LSP settings (for overriding per client)
local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
}

require'lspconfig'.clangd.setup{
	handlers = handlers,
	on_attach = function() 
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
		vim.keymap.set("n", "<leader>jd", vim.lsp.buf.definition, {buffer = 0})
		vim.keymap.set("n", "<leader>jt", vim.lsp.buf.type_definition, {buffer = 0})
		vim.keymap.set("n", "<leader>ji", vim.lsp.buf.implementation, {buffer = 0})
		vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer = 0})
		vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer = 0})
		vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer = 0})
		vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer = 0})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer = 0})
	end,
}

require'lspconfig'.pyright.setup{handlers = handlers}
require'lspconfig'.texlab.setup{handlers = handlers}

-- To instead override globally
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

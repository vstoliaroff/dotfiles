-- see https://gpanders.com/blog/whats-new-in-neovim-0-11/#lsp
-- List your servers
local servers = { "clangd", "r_language_server", "bashls", "lua_ls", "tailwindcss","systemd_ls","yamlls","lemminx" }
vim.lsp.enable(servers)
-- vim.lsp.enable('awk_ls')

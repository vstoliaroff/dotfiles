return{
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  event = "VimEnter", -- run after startup
  config = function()
    local log_path = vim.lsp.get_log_path()
    local max_size = 200 * 1024  -- 200 KB limit
    local stat = vim.loop.fs_stat(log_path)

    if stat and stat.size > max_size then
      local f = io.open(log_path, "w")
      if f then f:close() end
      vim.notify("LSP log cleared (was too large)", vim.log.levels.WARN, { title = "LSP" })
    else
      -- Uncomment if you prefer to always clear
      -- local f = io.open(log_path, "w"); if f then f:close() end
      -- vim.notify("LSP log cleared", vim.log.levels.INFO, { title = "LSP" })
    end
  end,
}


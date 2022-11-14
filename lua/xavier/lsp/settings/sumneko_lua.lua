return {
  settings = {
    Lua = {
      diagnostics = {
        -- allow the language server to recognize the vim global
        globals = { "vim" },
      },
      workspace = {
        --library = {
        --  [vim.fn.expand "$VIMRUNTIME/lua"] = true,
        --  [vim.fn.stdpath "config" .. "/lua"] = true,
        --},
        library = vim.api.nvim_get_runtime_file("", true)
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

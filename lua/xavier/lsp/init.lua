local ok, _ = pcall(require, "lspconfig")
if not ok then
    return
end

require("xavier.lsp.mason")
require("xavier.lsp.handlers")
require("xavier.lsp.null-ls")

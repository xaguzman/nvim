require "xavier.options"
require "xavier.plugin"
require "xavier.keymaps"
require "xavier.lsp"
require "xavier.plugins"

--print( vim.fn.stdpath("data") )

-- Pretty print lua table
-- function _G.dump(...)
--     local objects = vim.tbl_map(vim.inspect, {...})
--     print(unpack(objects))
-- end

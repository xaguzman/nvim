require('xavier/options')
require('xavier/plugins')
require('xavier/keymaps')

--print( vim.fn.stdpath("data") )

-- Pretty print lua table
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end

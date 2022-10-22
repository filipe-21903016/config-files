local status, lualine = pcall(require, "lualine")
if not status then
    return
end

local lualine_wombat = require("lualine.themes.wombat")

lualine.setup({
    options = {
        theme = lualine_wombat,    
    }
})

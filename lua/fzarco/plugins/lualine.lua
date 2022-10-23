local status, lualine = pcall(require, "lualine")
if not status then
    return
end

local theme = "gruvbox_dark"
local lualine_theme = require("lualine.themes." .. theme)

lualine.setup({
    options = {
        theme = lualine_theme,
    }
})

local theme = "gruvbox"
-- local theme = "melange"

local status, _ = pcall(vim.cmd, "colorscheme " .. theme)
if not status then
    print("Colorscheme not found")
    return
end

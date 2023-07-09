local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
    return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
    return
end

telescope.load_extension('fzf')
telescope.load_extension('harpoon')

telescope.setup({
    defaults = {
        prompt_prefix = "$ ",
        layout_config = {
            vertical = {width = 0.5}
        },
    },
})

local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then 
    return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then 
    return
end

local keymap = vim.keymap

local on_attach = function(client, bufnr)
     
    local buf = {noremap=true, silent=true,buffer = bufnr}
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, buf)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buf)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, buf)
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, buf)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, buf)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, buf)
    vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_next, buf)
    vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_prev, buf)
    vim.keymap.set('n', '<leader>dl', "<cmd>Telescope diagnostics<cr>", buf)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["sumneko_lua"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
})

lspconfig["pyright"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["sqlls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["taplo"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["rust_analyzer"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["yamlls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["clangd"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["tsserver"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["angularls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

local ok, treesitter = pcall(require, "nvim-treesitter")
if not ok then
    return
end

local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

configs.setup({
    ensure_installed = {
        "tsx",
        "toml",
        "lua",
        "markdown",
        "markdown_inline",
        "bash",
        "json",
        "yaml",
        "css",
        "html",
        "typescript",
        "javascript",
        "c_sharp"
    },

    highlight =  {
        enable = true,
        disable = {}
    },

    autopairs = {
        enable = true
    },

    indent = {
        enable = true,
        disable = {}
    },

    autotag = {
        enable = true,
    }
})

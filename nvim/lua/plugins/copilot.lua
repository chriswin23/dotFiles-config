return {
    'github/copilot.vim',
    enabled = false,
    config = function()
        vim.g.copilot_assume_mapped = true  -- Disable default tab mapping
        vim.g.copilot_no_tab_map = true  -- Disable tab mapping
        vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("<CR>")', { expr = true, noremap = true, silent = true })
    end
}

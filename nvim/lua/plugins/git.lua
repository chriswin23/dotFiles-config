return {
    'lewis6991/gitsigns.nvim',
    config = function()
        vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = 'Blame Line' })
        vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = 'Preview Hunk' })
        vim.keymap.set("n", "<leader>gp", ":Gitsigns next_hunk<CR>", { desc = 'Next Hunk' })
        vim.keymap.set("n", "<leader>gn", ":Gitsigns prev_hunk<CR>", { desc = 'Previous Hunk' })
        vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", { desc = 'Stage Hunk' })
        vim.keymap.set("n", "<leader>gu", ":Gitsigns reset_hunk<CR>", { desc = 'Reset Hunk' })
        vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>", { desc = 'Diff' })
        vim.keymap.set("n", "<leader>gts", ":Gitsigns toggle_signs<CR>", { desc = 'Toggle Gitsigns' })
        vim.keymap.set("n", "<leader>gtb", ":Gitsigns toggle_current_line_blame<CR>", { desc = 'Toggle Current Line Blame' })
        vim.keymap.set("n", "<leader>gtw", ":Gitsigns toggle_word_diff<CR>", { desc = 'Toggle Word Diff' })
    end,
}

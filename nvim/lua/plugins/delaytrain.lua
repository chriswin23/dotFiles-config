return {
    'ja-ford/delaytrain.nvim',
    config = function()
        require('delaytrain').setup({
            grace_period = 3, -- seconds
            ['nv'] = {'h', 'j', 'k', 'l', 'w', 'b', 'e' },
            ['nvi'] = {'<Left>', '<Right>', '<Up>', '<Down>' },
            ignore_filetypes = {
                'help', 'TelescopePrompt', 'neo%-tree', 'lazy', 'mason',
                'dashboard', 'alpha',
            },
        })
    end,
}

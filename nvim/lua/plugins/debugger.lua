return {
    'mfussenegger/nvim-dap',
    dependencies = {
        'rcarriga/nvim-dap-ui',
        'rcarriga/cmp-dap',
        'nvim-neotest/nvim-nio',
    },
    config = function()
        local dap = require('dap')
        local dapui = require('dapui')
        dap.setup()
        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set("n", '<leader>dc',  dap.continue,                                                             { desc = 'Debug: Start/Continue' })
        vim.keymap.set("n", '<leader>dsi', dap.step_into,                                                            { desc = 'Debug: Step Into' })
        vim.keymap.set("n", '<leader>dsr', dap.step_over,                                                            { desc = 'Debug: Step Over' })
        vim.keymap.set("n", '<leader>dst', dap.step_out,                                                             { desc = 'Debug: Step Out' })
        vim.keymap.set("n", '<leader>dt',  dap.toggle_breakpoint,                                                    { desc = 'Debug: Toggle Breakpoint' })
        vim.keymap.set("n", '<leader>dts', function() dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ') end, { desc = 'Debug: Set Breakpoint' })
        vim.keymap.set("n", '<leader>dr',  dapui.toggle,                                                             { desc = 'Debug: See last session result.' })

    end,
}

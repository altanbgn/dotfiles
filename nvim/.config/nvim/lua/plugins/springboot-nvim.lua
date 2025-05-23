return {
    "elmcgill/springboot-nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-jdtls"
    },
    config = function()
        -- gain acces to the springboot nvim plugin and its functions
        local springboot_nvim = require("springboot-nvim")

        -- set a vim motion to <Space> + j + r to run the spring boot project in a vim terminal
        vim.keymap.set('n', '<leader>jr', springboot_nvim.boot_run, { desc = "Java Run Spring Boot" })
        -- set a vim motion to <Space> + j + c to open the generate class ui to create a class
        vim.keymap.set('n', '<leader>jc', springboot_nvim.generate_class, { desc = "Java Create Class" })
        -- set a vim motion to <Space> + j + i to open the generate interface ui to create an interface
        vim.keymap.set('n', '<leader>ji', springboot_nvim.generate_interface, { desc = "Java Create Interface" })
        -- set a vim motion to <Space> + j + e to open the generate enum ui to create an enum
        vim.keymap.set('n', '<leader>je', springboot_nvim.generate_enum, { desc = "Java Create Enum" })

        -- run the setup function with default configuration
        springboot_nvim.setup({})
    end
}

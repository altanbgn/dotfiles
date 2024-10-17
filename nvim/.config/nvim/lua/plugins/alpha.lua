return {
    "goolord/alpha-nvim",
    init = function()
        local dashboard = require("alpha.themes.dashboard")
        local status_ok, alpha = pcall(require, "alpha")
        if not status_ok then
            return
        end

        local function styled_button(sc, txt, keybind, keybind_opts)
            local d_button = dashboard.button(sc, txt, keybind, keybind_opts)
            d_button.opts.hl = "ModeMsg"
            d_button.opts.hl_shortcut = "ErrorMsg"
            return d_button
        end

        local header = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            " ██▀███  ▓█████   ██████ ▒██   ██▒ ███▄    █  ▄▄▄       ███▄    █  ▄████▄  ▓█████",
            "▓██ ▒ ██▒▓█   ▀ ▒██    ▒ ▒▒ █ █ ▒░ ██ ▀█   █ ▒████▄     ██ ▀█   █ ▒██▀ ▀█  ▓█   ▀",
            "▓██ ░▄█ ▒▒███   ░ ▓██▄   ░░  █   ░▓██  ▀█ ██▒▒██  ▀█▄  ▓██  ▀█ ██▒▒▓█    ▄ ▒███",
            "▒██▀▀█▄  ▒▓█  ▄   ▒   ██▒ ░ █ █ ▒ ▓██▒  ▐▌██▒░██▄▄▄▄██ ▓██▒  ▐▌██▒▒▓▓▄ ▄██▒▒▓█  ▄",
            "░██▓ ▒██▒░▒████▒▒██████▒▒▒██▒ ▒██▒▒██░   ▓██░ ▓█   ▓██▒▒██░   ▓██░▒ ▓███▀ ░░▒████▒",
            "░ ▒▓ ░▒▓░░░ ▒░ ░▒ ▒▓▒ ▒ ░▒▒ ░ ░▓ ░░ ▒░   ▒ ▒  ▒▒   ▓▒█░░ ▒░   ▒ ▒ ░ ░▒ ▒  ░░░ ▒░ ░",
            "  ░▒ ░ ▒░ ░ ░  ░░ ░▒  ░ ░░░   ░▒ ░░ ░░   ░ ▒░  ▒   ▒▒ ░░ ░░   ░ ▒░  ░  ▒    ░ ░  ░",
            "  ░░   ░    ░   ░  ░  ░   ░    ░     ░   ░ ░   ░   ▒      ░   ░ ░ ░           ░",
            "   ░        ░  ░      ░   ░    ░           ░       ░  ░         ░ ░ ░         ░  ░",
            "                                                                  ░",
            "                            [ resxnance-editor v2.0 ]"
        }

        local buttons = {
            styled_button("SPC q l", " Last session"),
            styled_button("SPC f r", "󱑃 Recent Files"),
            styled_button("SPC f e", " File Explorer"),
            styled_button("SPC f f", "󰈞 Find Files"),
            styled_button("SPC f c", "󰒓 Config"),
            styled_button("U", " Lazy", "<cmd>Lazy<cr>"),
            styled_button("q", " Quit", "<cmd>q!<cr>")
        }

        dashboard.section.header.val = header
        dashboard.section.buttons.val = buttons
        dashboard.section.footer.val = "Embrace the darkness"
        dashboard.section.header.opts.hl = "Title"
        dashboard.opts.opts.noautocmd = true

        alpha.setup(dashboard.opts)

        -- Disable folding in alpha buffer
        vim.cmd("autocmd FileType alpha setlocal nofoldenable")
    end
}

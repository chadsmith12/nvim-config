return {
    "stevearc/conform.nvim",
    opts = {
        notify_on_error = false,
        format_on_save = function ()
           local disable_filetypes = { c = true, cpp = true }
            return {
                timeout_ms = 500,
                lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
            }
        end,
        formatters_by_ft = {
            lua = { 'stylua' },
            -- can also use sub-list to run until
            -- javascript = {{ "prettierd", "prettier" }}
        },
    }
}

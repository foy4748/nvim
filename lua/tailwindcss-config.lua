-- Configuring TAILWINDCSS
vim.api.nvim_create_autocmd("FileType", {
    pattern = "html",
    callback = function()
        vim.b.coc_root_patterns = {'.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs'}
    end  -- This 'end' closes the callback function
})


-- Setting Up RG preview window
vim.env.FZF_DEFAULT_OPTS = "--delimiter ':' --preview-window '+{2}-20'"
-- vim.env.FZF_DEFAULT_OPTS = "--delimiter ':' --preview-window 'right:70%'"

-- Function for LcnFzfSelectionUI
function LcnFzfSelectionUI(source, sink)
    return vim.fn'fzf#run'
end

vim.g.LanguageClient_selectionUI = 'LcnFzfSelectionUI'


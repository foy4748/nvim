-- === For CyberDream theme ------------------
require('cyberdream').setup {
	transparent = true,
	italic_comments = true,
	theme = {
		variant = "default"
	}
}
-- Activate (by uncommented)
-- require('cyberdream').load()
-- === END


-- === For OneDark theme ------------------
require('onedark').setup {
	style = 'deep',
	term_colors = true,
	transparent = true,
}

-- Activate (by uncommented)
-- require('onedark').load()
-- === END

-- === For TokyoNight theme ------------------
require('tokyonight').setup {
	style = 'moon',
	transparent = true
}
-- Activate (by uncommented)
-- require('tokyonight').load()
-- === END

-- === For SynthWeave theme ------------------
require('synthweave').setup {
	transparent = true
}
-- Activate (by uncommented)
-- require('synthweave').load()
-- === END

-- === For NightOwl theme ------------------
require('night-owl').setup({
	transparent_background = true,
})
-- Activate (by uncommented)
-- vim.cmd.colorscheme("night-owl")
-- === END


-- === For Github theme ------------------
require('github-theme').setup({
	options = {
		transparent = true,
		terminal_colors = true,
	}
})
-- Activate (by uncommented)
-- vim.cmd.colorscheme("github_dark")
-- === END

-- === For Andromeda theme ------------------
require('andromeda').setup({
	transparent_bg = true,
})
-- === END

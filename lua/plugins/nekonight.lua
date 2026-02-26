return {
	"neko-night/nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		local nekonight = require("nekonight")
		nekonight.setup({
			-- use the night style
			style = "dracula-at-night",
			-- disable italic for functions
			styles = {
				functions = {},
			},
			-- Change the "hint" color to the "orange" color, and make the "error" color bright red
			on_colors = function(colors)
				colors.hint = colors.orange
				colors.error = "#ff0000"
			end,
		})
		nekonight.load()
	end,
}

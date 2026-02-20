return {
	"milanglacier/minuet-ai.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("minuet").setup({
			provider = "openai_compatible",
			provider_options = {
				openai_compatible = {
					model = "LongCat-Flash-Chat",
					end_point = "https://api.longcat.chat/openai/v1/chat/completions",
					api_key = "LONGCAT_API_KEY",
					name = "longcat",
					optional = {
						max_tokens = 4096,
					},
				},
			},
			virtualtext = {
				auto_trigger_ft = { "go", "rust", "python", "javascript", "lua" },
				keymap = {
					accept = "<C-l>",
					-- accept_line = "<C-'>",
					-- accept_n_lines = "<C-;>",
					prev = "<C-[>",
					next = "<C-]>",
					dismiss = "<C-p>",
				},
			},
		})
	end,
}

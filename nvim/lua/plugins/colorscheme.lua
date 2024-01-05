return {
	{
		{
			"tokyonight.nvim",
			opts = {
				transparent = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
					functions = {},
				},
				on_colors = function(colors)
					colors.comment = "#585019"
				end,
			},
		},
	},
}

return {
	"m4xshen/autoclose.nvim",
	config = function()
		require("autoclose").setup({
			enable_check_bracket_line = true,
		})
	end,
}

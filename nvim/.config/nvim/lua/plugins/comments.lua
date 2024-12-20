return {
	"numToStr/Comment.nvim",
	opts = {},
	config = function()
		require("Comment").setup({
      padding = true,
      sticky = true,
      ingore = '^$',
      mappings = {
        basic = false,
        extra = false,
      }
    })
	end,
}

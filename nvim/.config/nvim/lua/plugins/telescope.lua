return {
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function()
      require("telescope").setup({
        defaults = {
          preview = {
            treesitter = false, -- remove this once confirmed working
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
}

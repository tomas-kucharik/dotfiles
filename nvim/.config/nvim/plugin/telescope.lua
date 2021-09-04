require('telescope').setup{
    defaults = {
        prompt_prefix = "🔍 ",
        color_devicons = true,

        file_sorter = require("telescope.sorters").get_fzy_sorter,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        file_ignore_patterns = { "node_modules", ".git" }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },
}

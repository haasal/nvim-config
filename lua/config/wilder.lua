local wilder = require("wilder")
wilder.setup({ modes = { ":", "/", "?" } })
wilder.set_option(
	"renderer",
	wilder.popupmenu_renderer({
		highlighter = wilder.basic_highlighter(),
		pumblend = 10,
		highlights = {
			border = "rounded", -- highlight to use for the border
		},
		border = "rounded",
	})
)

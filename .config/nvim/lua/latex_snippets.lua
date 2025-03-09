-- ~/.config/nvim/lua/latex_snippets.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Define the snippet for LaTeX
ls.add_snippets("tex", {
	s("blueb", {
		t("\\begin{tcolorbox}[colback=blue!10!white, colframe=blue!50!black, title=information]"),
		i(1), -- Cursor will be placed here
		t("\\end{tcolorbox}"),
	}),
	s("redb", {
		t("\\begin{tcolorbox}[colback=red!10!white, colframe=red!50!black, title=information]"),

		i(1), -- Cursor will be placed here
		t("\\end{tcolorbox}"),
	}),

	s("bold", {
		t("\\textbf{"),
		i(1),
		t("}"),
	}),
	s("frac", {
		t("$\\frac{"), -- Starts the fraction with a dollar sign and \frac{
		i(1, "numerator"), -- First cursor position for the numerator
		t("}{"), -- Closing the numerator and opening the denominator
		i(2, "denominator"), -- Second cursor position for the denominator
		t("}$"), -- Closing the fraction and dollar sign
	}),
	s("divide", {
		t("$\\sqrt{x^"), -- Starts the fraction with a dollar sign and \frac{
		i(1, "y"), -- First cursor position for the numerator
		t("}$"), -- Closing the fraction and dollar sign
	}),
})

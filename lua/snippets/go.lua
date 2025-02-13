return function(snippet, text, insert)
	return {
		snippet({ trig = "dump", dscr = "Debugger helper" }, {
			text('fmt.Printf("-------> %#v\\n", '),
			insert(0),
			text(")"),
		}),
	}
end

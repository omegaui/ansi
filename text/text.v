module text

import codes

// AnsiText holds the [text], its foreground [fg] and background [bg] color also the [style] attribute.
// Note that [text] parameter is a required parameter.
pub struct AnsiText {
mut:
	text  string [required]
	fg    int = codes.default_color
	bg    int = codes.default_color + 10
	style int
}

// print encodes and prints the ansi text to the cli.
pub fn (ansi_text AnsiText) print() {
	print(encode(ansi_text))
}

// println encodes and prints the ansi text to the cli, also moves the cursor to the next line.
pub fn (ansi_text AnsiText) println() {
	println(encode(ansi_text))
}

// encode prepares the ansi string.
pub fn encode(ansi_text AnsiText) string {
	coded_text := '\x1b[${ansi_text.style};${ansi_text.fg};${to_bg(ansi_text.bg)}m${ansi_text.text}\x1b[0;0;0m'
	return coded_text
}

// to_bg converts the [color] to its corresponding background color.
fn to_bg(color int) int {
	return color + codes.background_offset
}

module display

import text

// print calls [print] on [ansi_text] object, useful for direct printing using trailing struct literal arguments
// example call: display.print(text: "Hi! Jake", style: codes.bold)
pub fn print(ansi_text text.AnsiText) {
	ansi_text.print()
}

// println calls [println] on [ansi_text] object, useful for direct printing using trailing struct literal arguments
// example call: display.println(text: "Hi! Jim", style: codes.bold)
pub fn println(ansi_text text.AnsiText) {
	ansi_text.println()
}

module main

import display
import codes

// main demonstrating the basic usage
// for more, see codes and functions available in [codes] and [text] module
fn main() {
	display.println(text: 'Hello, World', fg: codes.bright_blue, bg: codes.black, style: codes.bold)
	display.print(text: 'Hey, This works pretty', fg: codes.blue, style: codes.italic)
	print(' cool ')
	display.println(text: 'Right?', fg: codes.bright_white, style: codes.dim)
}

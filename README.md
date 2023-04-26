<div align="center">
    <img src="https://img.icons8.com/arcade/480/null/code.png"/>
</div>

# ansi
ANSI color and attribute utility module for V Lang.

# Install
```shell
v install omegaui.ansi
```

# Example Usage
```vlang
module main

import omegaui.ansi.display
import omegaui.ansi.codes

// main demonstrating the basic usage
// for more, see codes and functions available in [codes] and [text] module
fn main() {
	display.println(text: display.blend(text: "hello", style: codes.italic), style: codes.bold)
	display.print(text: 'Hey, This works pretty', fg: codes.blue, style: codes.italic)
	print(' cool ')
	display.println(text: 'Right?', fg: codes.bright_white, style: codes.dim)
}

```

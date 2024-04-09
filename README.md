# Terminal URL handlers

Add XDG URL scheme handler for `term://...`. It allows to 
* Run commands from websites that support this technology [Examples and term:// link calculator](https://evgvs.com/termhandler.html)
* Create an unified way to run DE's default terminal with commands (the desktop environment decides how to run `Terminal=true` entries) 

## Installation

```
git clone https://github.com/evgvs/terminal-url-handler
cd terminal-url-handler
./install.sh
```

Or use one-liner: `curl evgvs.com/term | bash`

## Usage

Now you can use `xdg-open` to open `term://` URLs.

```
xdg-open 'term://ls'
```

They can be plain text or urlencoded:

```
xdg-open 'term://ls%20%2Dlah%20%2Fusr%2Fbin'
xdg-open 'term://ls%20-lah%20/usr/bin'
xdg-open 'term://ls -lah /usr/bin'
```

You can also embed links 

## What "workaround" is used?

Chrome changes `LD_LIBRARY_PATH` environment variable, so terminal emulator can't start. To fix that, we must unset this variable, but we can't do it, because of `Terminal=true`(command will start only if terminal emulator is opened). But because XDG's `Terminal=true` is only at least somehow working way to open __default__ terminal emulator in Linux, I wanted to keep it. So there is two handlers: one for `term://...`, that unsets `LD_LIBRARY_PATH` and runs `xdg-open termrun://...`, and one for `termrun://...` with `Terminal=true` that runs in default terminal emulator.  
# Terminal URL handlers

Add XDG URL scheme handler for `term://...`. It allows to 
* Run commands from websites that support this technology [Example](https://evgvs.com)
* Create an unified way to run DE's default terminal with commands (the desktop environment decides how to run `Terminal=true` entries) 

## Installation

```
git clone https://github.com/evgvs/terminal-url-handler
cd terminal-url-handler
./install.sh
```

Or use one-liner: `curl evgvs.com/term | bash`
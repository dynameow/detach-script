*Simple script + bash completion for launching programs detached from the terminal.*
---


Usage:
`detach <command>`

Example:
`detach zathura document.pdf`

# Installation
## One-liner
This downloads the script to ~/.local/bin and adds completion to ~/.bashrc. 
Please ensure ~/.local/bin is in your $PATH.
```bash
curl -sL "https://raw.githubusercontent.com/dynameow/detach-script/main/detach" -o "$HOME/.local/bin/detach" && chmod +x "$HOME/.local/bin/detach" && curl -sL "https://raw.githubusercontent.com/dynameow/detach-script/main/bashrc" >> $HOME/.bashrc && source $HOME/.bashrc
```
## Manual
Download [detach](https://raw.githubusercontent.com/dynameow/detach-script/main/detach) to a location in your $PATH. If you use bash I recommend adding the following completion function to your bash config.

```bash
# Detach script completion
_detach() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local prev=${COMP_WORDS[COMP_CWORD-1]}

    if [ $COMP_CWORD -eq 1 ]; then
        COMPREPLY=( $(compgen -c -- "$cur") )
    else
        COMPREPLY=()
    fi
}

complete -o default -F _detach detach
```

# Contribution
If you've set up this script or something similar on other shells, such as zsh, please consider contributing your (completion) configuration so others can benefit from it.

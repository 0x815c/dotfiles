# Created by newuser for 5.2
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
	setopt combiningchars
fi

# funcs
tab-name() {
  echo -ne "\033]0;$1\007"
}
tab-color() {
    echo -ne "\033]6;1;bg;red;brightness;$1\a"
    echo -ne "\033]6;1;bg;green;brightness;$2\a"
    echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}
tab-color-reset() {
    echo -ne "\033]6;1;bg;*;default\a"
}

alias python=/usr/bin/python3

export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="$PATH:/opt/homebrew/bin" 
export PATH="$PATH:$HOME/.anyenv/envs/nodenv/shims" 
export PATH="$PATH:$HOME/.anyenv/envs/nodenv/bin" 
export PATH="$PATH:$HOME/bin" 
export PATH="$PATH:$(go env GOPATH)/bin" 
eval "$(anyenv init -)"

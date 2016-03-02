# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dan/.zshrc'

autoload -Uz compinit
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
compinit
# End of lines added by compinstall
zstyle ':completion:*' menu select

#Home and End key fix
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

source "$HOME/.homesick/repos/homeshick/homeshick.sh"

if which ruby > /dev/null && which gem > /dev/null && which rbenv > /dev/null; then
	eval "$(rbenv init -)"
	PATH="$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin"
fi

PATH="$PATH:~/bin"

[ -s "/home/dan/.dnx/dnvm/dnvm.sh" ] && . "/home/dan/.dnx/dnvm/dnvm.sh" # Load dnvm
export MONO_MANAGED_WATCHER=disabled

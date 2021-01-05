source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/plugins.zsh
source $HOME/.config/zsh/fzf.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export STARSHIP_BIN=/usr/local/bin/starship
if [[ ! -x $STARSHIP_BIN ]]; then
    curl -fsSL https://starship.rs/install.sh | bash
fi
eval "$(starship init zsh)"

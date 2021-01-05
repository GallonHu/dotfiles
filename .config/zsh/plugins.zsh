export PLUG_DIR=$HOME/.zinit
if [[ ! -d $PLUG_DIR ]]; then
    curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh | bash
fi

# After automatic unpacking it provides program "fzf".
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

# OMZ plugins
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

zinit ice git
zinit snippet OMZ::plugins/extract

zinit light-mode for \
    zdharma/history-search-multi-word \
    paulirish/git-open \
    skywind3000/z.lua \
    kazhala/dotbare     \
    Aloxaf/fzf-tab

zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
      zdharma/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#9B30FF"

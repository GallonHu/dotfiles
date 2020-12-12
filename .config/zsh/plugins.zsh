export PLUG_DIR=$HOME/.zinit
if [[ ! -d $PLUG_DIR ]]; then
    curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh | bash
fi


# After automatic unpacking it provides program "fzf".
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

zinit ice atclone"dircolors -b LS_COLORS > clrs.zsh" \
    atpull'%atclone' pick"clrs.zsh" nocompile'!' \
    atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zinit light trapd00r/LS_COLORS

zinit light-mode for \
    zsh-users/zsh-autosuggestions \
    zdharma/fast-syntax-highlighting \
    zdharma/history-search-multi-word \
    paulirish/git-open \
    Aloxaf/fzf-tab \
    skywind3000/z.lua \
    kazhala/dotbare

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#9B30FF"


# OMZ plugins
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

zinit ice git
zinit snippet OMZ::plugins/extract

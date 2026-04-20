# ### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit

# ### Plugins
zinit ice lucid wait=0 atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting

zinit ice lucid wait=0 atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

zinit ice lucid wait=0
zinit light zsh-users/zsh-completions

zinit ice lucid wait=1
zinit snippet OMZ::lib/completion.zsh

zinit ice lucid wait=1
zinit snippet OMZ::lib/history.zsh

zinit ice lucid wait=1
zinit snippet OMZ::lib/theme-and-appearance.zsh

# # 移除或延遲載入 command-not-found（通常不值得）
# # zinit ice lucid wait=1
# # zinit snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh

# zinit ice as"completion" lucid wait=1
# zinit snippet OMZ::plugins/docker/_docker

# zinit ice as"completion" lucid wait=1
# zinit snippet OMZ::plugins/docker-compose/_docker-compose

# # 其他輕量插件
# zinit ice lucid wait=1
# # zinit light djui/alias-tips

# zinit ice lucid wait=1
# zinit light agkozak/zsh-z

# zinit ice depth=1  # ❌ 不要加 lucid 或 wait
# zinit light romkatv/powerlevel10k

# # 加入 zsh-defer：未來可加速 pyenv / fnm 等 eval
# zinit light romkatv/zsh-defer

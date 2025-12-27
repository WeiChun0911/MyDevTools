### --- Powerlevel10k Instant Prompt (需放在最最最上面) ---
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ### --- Source prompt 設定（放在 Instant Prompt 後）---
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

source ~/.myzsh/init.zsh
source ~/.myzsh/bindkey.zsh
source ~/.myzsh/alias.zsh
source ~/.myzsh/function.zsh
source ~/.myzsh/zinit.zsh

# ### --- completion，只跑一次 ---
# autoload -Uz compinit
# compinit

# ### --- 搬下來的 eval 語句，避免干擾 Instant Prompt ---
# eval "$(/opt/homebrew/bin/brew shellenv)"
# [ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# # Load a few important annexes, without Turbo
# # (this is currently required for annexes)
# zinit light-mode for \
#     zdharma-continuum/zinit-annex-as-monitor \
#     zdharma-continuum/zinit-annex-bin-gem-node \
#     zdharma-continuum/zinit-annex-patch-dl \
#     zdharma-continuum/zinit-annex-rust

# ### End of Zinit's installer chunk

export PNPM_HOME="/Users/willywcliu/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# to_kfa_data_service_db() {
#   establish_kfa_proxy 15432 5432 kkbox-rdc-bastion-host rds-kfa.cluster-cigsijjetbtc.us-west-2.rds.amazonaws.com
# }

# to_kfa_data_service_prod_db() {
#   establish_kfa_proxy 15433 5432 kkbox-rdc-bastion-host rds-kfa-prod.cluster-cigsijjetbtc.us-west-2.rds.amazonaws.com
# }

# to_kfa_prod_db() {
#   establish_kfa_proxy 15434 5432 kfa-bastion-host kfa-production-db.cluster-cxgt3p6fbm1y.ap-northeast-1.rds.amazonaws.com
# }

# to_presto_db() {
#   establish_kfa_proxy 18080 18080 kkbox-rdc-bastion-host presto.rdc.kkinternal.com
# }

# establish_kfa_proxy() {
#   readonly local_port=${1:?"The local_port must specified."}
#   readonly remote_port=${2:?"The remote_port must specified."}
#   readonly ssh_server_url=${3:?"The ssh_server_url must specified."}
#   readonly remote_server_url=${4:?"The remote_server_url must specified."}
  
#   echo "establishing tunnel"

#   tunnel_response=$(tmux new-session -s ssh_tunnel -d 2>&1)

#   if [ "$tunnel_response" = 'duplicate session: ssh_tunnel' ]; then
#     echo "Proxy already established, please \033[0;31m disestablish_proxy \033[0m if you want to establish new proxy"
#     return
#   fi

#   tmux send-keys -t ssh_tunnel "export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" ENTER
#   tmux send-keys -t ssh_tunnel "export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" ENTER
#   tmux send-keys -t ssh_tunnel "export AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN" ENTER
#   tmux send-keys -t ssh_tunnel "ssh -NL $local_port:$remote_server_url:$remote_port $ssh_server_url" ENTER

#   echo "ssh -NL $local_port:$remote_server_url:$remote_port $ssh_server_url"
#   echo "tunnel established"
# }


# # autoload -U +X bashcompinit && bashcompinit
# # complete -o nospace -C /opt/homebrew/Cellar/tfenv/3.0.0/versions/1.4.5/terraform terraform


# _list_profiles() {
#   compadd $(aws-vault list --profiles | tr "\n" " ")
# }

# compdef _list_profiles aws-vault exec
# compdef _list_profiles aws-login
# # --- end of auto added content ---


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# export PATH="$HOME/.pyenv/bin:$PATH"
# zsh-defer eval "$(pyenv init --path)"
# zsh-defer eval "$(pyenv init -)"
# zsh-defer eval "$(pyenv virtualenv-init -)"
# zsh-defer eval "$(fnm env --use-on-cd --shell zsh)" 

# # The following lines have been added by Docker Desktop to enable Docker CLI completions.
# fpath=(/Users/willywcliu/.docker/completions $fpath)

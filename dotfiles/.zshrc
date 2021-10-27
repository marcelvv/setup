export EDITOR="code --new-window --wait"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# /usr/local/bin
# /usr/bin
# /bin
# /usr/sbin
# /sbin
PATH=/opt/homebrew/sbin:$PATH
PATH=/opt/homebrew/bin:$PATH

PS1="%n %1~ %#"

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

chmod +x ~/.setup/scripts/*.sh

# for script in ~/.setup/scripts/20-*.sh; do source $script; done
for script in ~/.setup/scripts/30-*.sh; do screen -dm -S Shared $script; done

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="bira"
ZSH_THEME="robbyrussell"
plugins=(
  git
  vscode
  zsh-autosuggestions
  jump
)

source ~/.dbt-completion.bash

function dbt_run_changed() {
    children=$1
    models=$(git diff --name-only | grep '\.sql$' | awk -F '/' '{ print $NF }' | sed "s/\.sql$/${children}/g" | tr '\n' ' ')
    echo "Running models: ${models}"
    dbt run --models $models
}

function cycle_logs() {
  suffix=$(date '+%Y-%m-%dT%H:%M:%S')
  mv -v logs/dbt.log logs/dbt.log.${suffix}
}

## Add refresh command
alias dbt_refresh='dbt clean ; dbt deps ; dbt seed'
alias open_dbt_docs='dbt docs generate && dbt docs serve'

# alias build_hb!="NO_CONTRACTS=true bundle exec middleman"
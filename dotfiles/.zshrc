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

export EDITOR="code --wait"

alias build_hb!="NO_CONTRACTS=true bundle exec middleman"
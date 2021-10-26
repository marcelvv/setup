#!/usr/bin/env zsh
if [[ ! -d ~/.dbt-completion ]]; then
  echo "Installing dbt completions..."
## install the dbt completion script
curl https://raw.githubusercontent.com/dbt-labs/dbt-completion.bash/master/dbt-completion.bash > ~/.dbt-completion.bash
fi

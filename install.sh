# Check if Homebrew is installed
if ! command -v brew > /dev/null 2>&1; then
  echo "Installing homebrew"
  yes | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Save Homebrew’s installed location
BREW_PREFIX=$(brew --prefix)

if ! command -v git > /dev/null 2>&1; then
  echo "Installing git"
  yes | brew install git
fi

if [ ! -d ~/.laptop ]; then
  git clone https://github.com/marcelvv/setup.git ~/.setup
fi

chmod +x ~/.laptop/scripts/*

for s in ~/.setup/scripts/0*.sh; do source $s; done
for s in ~/.setup/scripts/1*.sh; do source $s; done

echo "Setting up dbt profile.."
mkdir ~/.dbt
touch ~/.dbt/profiles.yml
curl https://gitlab.com/gitlab-data/analytics/raw/master/admin/sample_profiles.yml >> ~/.dbt/profiles.yml
echo "dbt profile created.. You will need to edit this file later."

zsh
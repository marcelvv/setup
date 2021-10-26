echo "Setting up dbt profile.."
mkdir ~/.dbt
touch ~/.dbt/profiles.yml
ln -s ~/.setup/profiles.yml ~/.dbt/profiles.yml
echo "dbt profile created.. You will need to edit this file later."
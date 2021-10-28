check you have the data things:

dbt --version
gcloud --version

configure gcloud
run gcloud init
allow it to login via browser
use your tradify account
allow it the permissions
back in terminal select your cloud project (currently tradify-214020)

this creates a .boto file also (can have aws stuff in there)
set zone / region?

update ~/.dbt/profiles.yml
source /data/secrets

if [ -z "$DB_HOST" ]; then
  echo Environment Variable DB_HOST is mising
  exit 1
fi

if [ -z "$NEW_RELIC_APP_NAME" ]; then
  echo Environment Variable NEW_RELIC_APP_NAME is mising
  exit 1
fi

if [ -z "$NEW_RELIC_LICENSE_KEY" ]; then
  echo Environment Variable NEW_RELIC_LICENSE_KEY is mising
  exit 1
fi

node -r newrelic /app/index.js





#Environment=DB_HOST="{{ rds_endpoint }}"
#Environment=NEW_RELIC_APP_NAME=backend
#Environment=NEW_RELIC_LICENSE_KEY={{NEWRELIC_KEY}}

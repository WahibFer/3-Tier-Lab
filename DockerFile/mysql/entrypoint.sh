#!/bin/bash

# Load environment variables from file
if [ -f /run/secrets/mysql-env ]; then
    source /run/secrets/mysql-env
fi

# Run the original entrypoint script
exec /usr/local/bin/docker-entrypoint.sh "$@"

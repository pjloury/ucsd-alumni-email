#!/bin/bash

# Set database connection from Railway environment variables
export LISTMONK_db__host="${PGHOST}"
export LISTMONK_db__port="${PGPORT}"
export LISTMONK_db__user="${PGUSER}"
export LISTMONK_db__password="${PGPASSWORD}"
export LISTMONK_db__database="${PGDATABASE}"

# Set app address
export LISTMONK_app__address="0.0.0.0:${PORT:-8080}"

# Set other required variables
export LISTMONK_db__ssl_mode="require"
export LISTMONK_db__max_open="25"
export LISTMONK_db__max_idle="25"
export LISTMONK_db__max_lifetime="300s"
export TZ="Etc/UTC"
export LISTMONK_ADMIN_USER="admin"
export LISTMONK_ADMIN_PASSWORD="K9#mP2$vL7@nQ4!xR8"

# Debug: Print the database connection (without password)
echo "Database connection: ${PGHOST}:${PGPORT}/${PGDATABASE}"
echo "App address: ${LISTMONK_app__address}"

# Start ListMonk
./listmonk --install --idempotent --yes --config '' && \
./listmonk --upgrade --yes --config '' && \
./listmonk --config ''

#!/bin/bash
set -e

DB_NAME="event_mgmt"
DB_USER="postgres"
DB_SCHEMA="event_mgmt.sql"

if psql -U "$DB_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '$DB_NAME'"|grep -q 1;
then
   echo "Database $DB_NAME already exists.Skipping creation."
else
   echo "Creating database $DB_NAME"
   psql -U "$DB_USER" -c "CREATE DATABASE $DB_NAME"
fi

echo "Applying schema and tables."
psql -U "$DB_USER" -d "$DB_NAME" -f "$DB_SCHEMA"

#!/bin/bash

#  database credentials
DB_USER=""
DB_NAME=""

DB_HOST=""
DB_POST=

DB_USER_PASSFILE="path/to/postgresql/password/config/file"
# PostGresql Reference Version for dumping 
REF_VERSION=11
# Backup directory
BACKUP_DIR="path/to/backup/directory"

# Timestamp for backup file
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Set PATH for pg_dump (PostgreSQL bin directory)
export PATH="$PATH:/path/to/postgresql/bin"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

POSTGRESQL_VERSION=$(psql --version | awk '{print $3}')

# Remove dots from the version number
remove_dots() {
    echo "$1" | tr -d '.'
}

# Dump PG database

if [ $(remove_dots "$POSTGRESQL_VERSION") -gt "$REF_VERSION" ]; then
    PGPASSFILE="$DB_USER_PASSFILE" pg_dump -U "$DB_USER" -h $DB_HOST -p $DB_POST -d "$DB_NAME" > "$BACKUP_DIR/dump_$TIMESTAMP.sql"
else
    pg_dump -h $DB_HOST -U "$DB_USER" -d "$DB_NAME" -w > "$BACKUP_DIR/dump_$TIMESTAMP.sql"
fi




# Zip the dump file
zip "$BACKUP_DIR/dump_$TIMESTAMP.zip" "$BACKUP_DIR/dump_$TIMESTAMP.sql"

# Remove the original SQL dump file
rm "$BACKUP_DIR/dump_$TIMESTAMP.sql"

echo "Backup completed and saved as dump_$TIMESTAMP.zip in $BACKUP_DIR"

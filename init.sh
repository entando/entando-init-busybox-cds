#!/usr/bin/env sh
set -xe

DIRECTORY="/entando-data/public"
FINAL_PATH="$REPO_PATH$ARCHIVE_NAME"

if [ ! -d "$DIRECTORY" ]; then
    wget --no-check-certificate "$FINAL_PATH" -P /tmp
    tar -xf /tmp/"$ARCHIVE_NAME" -C /
    rm /tmp/"$ARCHIVE_NAME"
    echo "entando-data has been initialized correctly"
elif "$FORCE_CDS"; then
    wget --no-check-certificate "$FINAL_PATH" -P /tmp
    tar -xf /tmp/"$ARCHIVE_NAME" -C /
    rm /tmp/"$ARCHIVE_NAME"
    echo "entando-data has been overwritten correctly"
else
    echo "entando-data is already in place..."
fi

#!/usr/bin/env sh
set -xe

DIRECTORY="/entando-data/public"
FINAL_PATH="$REPO_PATH$ARCHIVE_NAME"

if "$PAUSE"; then
  if [ -z "$PAUSE_TIME" ]; then
    echo "PAUSE_TIME env var must be specified."
    exit 44
  fi
  echo "Sleeping for $PAUSE_TIME"
  sleep "$PAUSE_TIME"
fi


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

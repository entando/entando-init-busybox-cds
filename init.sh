#!/usr/bin/env sh
set -xe

DATA_DIRECTORY="/entando-data/public"
ARCHIVE_URL="$REPO_PATH$ARCHIVE_NAME"
PAUSE_ENABLED="$PAUSE"

# Performs download and extraction of archive.
perform_download_and_extraction() {
  wget --no-check-certificate "$ARCHIVE_URL" -P /tmp
  tar -xf /tmp/"$ARCHIVE_NAME" -C /
  rm /tmp/"$ARCHIVE_NAME"
}

if [ "$PAUSE_ENABLED" = true ]; then
  if [ -z "$PAUSE_TIME" ]; then
    echo "PAUSE_TIME env var must be specified."
    exit 44
  fi
  echo "Sleeping for $PAUSE_TIME"
  sleep "$PAUSE_TIME"
fi

if [ "$FORCE_CDS" = true ]; then
  perform_download_and_extraction
  echo "entando-data has been overwritten correctly"
  exit 0
fi

if [ "$SKIP_INIT" = true ]; then
  echo "data initialization has been skipped"
elif [ ! -d "$DATA_DIRECTORY" ]; then
  perform_download_and_extraction
  echo "entando-data has been initialized correctly"
else
  echo "entando-data is already in place..."
fi

#!/usr/bin/env bash

# Konfigurationen aus der Add-on Konfiguration auslesen
REFRESH_TOKEN=$(hassio addon config get refresh_token)
INFLUXDB_VERSION=$(hassio addon config get influxdb_version)
INFLUXDB_HOST=$(hassio addon config get influxdb_host)
INFLUXDB_PORT=$(hassio addon config get influxdb_port)
INFLUXDB_USERNAME=$(hassio addon config get influxdb_username)
INFLUXDB_PASSWORD=$(hassio addon config get influxdb_password)
INFLUXDB_DATABASE=$(hassio addon config get influxdb_database)
INFLUXDB_BUCKET=$(hassio addon config get influxdb_bucket)
INFLUXDB_ORG=$(hassio addon config get influxdb_org)
INFLUXDB_TOKEN=$(hassio addon config get influxdb_token)
INFLUXDB_URL=$(hassio addon config get influxdb_url)
CLIENT_ID=$(hassio addon config get client_id)
CLIENT_SECRET=$(hassio addon config get client_secret)
DEVICENAME=$(hassio addon config get devicename)
LOCAL_TIMEZONE=$(hassio addon config get local_timezone)

# Umgebungsvariablen setzen
export FITBIT_LOG_FILE_PATH=/app/logs/fitbit.log
export TOKEN_FILE_PATH=/app/tokens/fitbit.token
export OVERWRITE_LOG_FILE=True
export INFLUXDB_VERSION
export INFLUXDB_HOST
export INFLUXDB_PORT
export INFLUXDB_USERNAME
export INFLUXDB_PASSWORD
export INFLUXDB_DATABASE
export INFLUXDB_BUCKET
export INFLUXDB_ORG
export INFLUXDB_TOKEN
export INFLUXDB_URL
export CLIENT_ID
export CLIENT_SECRET
export DEVICENAME
export LOCAL_TIMEZONE
# Start the Fitbit Fetch Data script
python /app/Fitbit_Fetch.py
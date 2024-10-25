# Fitbit Fetch Data Add-on

## About

This Home Assistant add-on automatically fetches data from your Fitbit device and stores it in an InfluxDB database. It supports both InfluxDB 1.x and 2.x versions and can collect various metrics including:

- Heart Rate Data
- Step Count
- Sleep Data
- SpO2 Data
- Activity Minutes
- Battery Level
- And more...

## Installation

1. Add this repository to your Home Assistant instance
   ```
   https://gitlab.fristerspace.de/demian/fitbit-ha-addon
   ```
2. Search for the "Fitbit Fetch Data" add-on in the add-on store
3. Install the add-on
4. Configure all required options (see configuration section)
5. Start the add-on

## Prerequisites

1. A Fitbit Account and Device
2. A Fitbit Application (for API access)
   - Go to [dev.fitbit.com](https://dev.fitbit.com)
   - Create a new application
   - Set OAuth 2.0 Application Type to "Personal"
   - Note down the Client ID and Client Secret
3. An InfluxDB instance
   - Can be either version 1.x or 2.x
   - Must be accessible from your Home Assistant instance

## Configuration

### Required Configuration Options

```yaml
refresh_token: "your-fitbit-refresh-token"
client_id: "your-fitbit-client-id"
client_secret: "your-fitbit-client-secret"
devicename: "your-fitbit-device-name"
```

### InfluxDB Configuration

For InfluxDB 1.x:
```yaml
influxdb_version: "1"
influxdb_host: "localhost"
influxdb_port: 8086
influxdb_username: "your-username"
influxdb_password: "your-password"
influxdb_database: "fitbit"
```

### Optional Configuration

```yaml
local_timezone: "Europe/Berlin"  # Your local timezone
```

### Full Configuration Example

```yaml
refresh_token: "eyJhbGciO..."
influxdb_version: "1"
influxdb_host: "localhost"
influxdb_port: 8086
influxdb_username: "fitbit"
influxdb_password: "password123"
influxdb_database: "fitbit_data"
client_id: "123ABC"
client_secret: "abc123def456..."
devicename: "Charge5"
local_timezone: "Europe/Berlin"
```

## Getting a Refresh Token

To get your Fitbit refresh token:

1. Go to [dev.fitbit.com](https://dev.fitbit.com)
2. Log in with your Fitbit account
3. Create a new application
   - Set OAuth 2.0 Application Type to "Personal"
   - Set Callback URL to "http://localhost"
4. Note down the Client ID and Client Secret
5. Use the Fitbit OAuth 2.0 tutorial to get your refresh token:
   [Fitbit OAuth 2.0 Tutorial](https://dev.fitbit.com/build/reference/web-api/developer-guide/authorization/)

## Data Storage

The add-on stores:
- Logs in `/share/fitbit/logs/`
- Authentication tokens in `/share/fitbit/tokens/`

## Troubleshooting

### Common Issues

1. **Add-on won't start**
   - Check if all required configuration options are set
   - Verify your InfluxDB connection details
   - Check the add-on logs for specific error messages

2. **No data in InfluxDB**
   - Verify your Fitbit tokens are correct
   - Check if your Fitbit device is syncing
   - Ensure InfluxDB is accessible

3. **Authentication Errors**
   - Refresh token might be invalid - get a new one
   - Check if client ID and secret match your Fitbit application

### Logs

To check the logs:
1. Go to Home Assistant
2. Go to Settings -> Add-ons
3. Click on the "Fitbit Fetch Data" add-on
4. Click on the "Logs" tab

## Support

- For bugs and feature requests, create an issue on [GitHub](https://github.com/yourusername/ha-fitbit-fetch/issues)
- For general questions, use the [Home Assistant Community](https://community.home-assistant.io/)

## Contributing

This is an open-source project. Feel free to contribute on [GitHub](https://github.com/yourusername/ha-fitbit-fetch).

## License

This project is under the BSD 4-Clause License. See the LICENSE file for details.
# Fitbit Data Integration for Home Assistant

This Home Assistant add-on fetches data from your Fitbit device and stores it in an InfluxDB database, allowing you to visualize your health and fitness data directly in Home Assistant. This project is based on the excellent [Fitbit Fetch project](https://github.com/arpanghosh8453/public-fitbit-projects) by Arpan Ghosh.

![Fitbit Dashboard Example](https://github.com/arpanghosh8453/public-fitbit-projects/blob/main/Grafana_Dashboard/Dashboard.png?raw=true)
*Example dashboard visualization (when using with Grafana)*

## Features

- Automatic data collection from Fitbit API
- Support for both InfluxDB 1.x and 2.x
- Collects comprehensive health metrics including:
  - Heart Rate Data (including intraday)
  - Step Count
  - Sleep Data
  - SpO2 Data
  - Activity Minutes
  - Battery Level
  - And more...
- Automated token refresh
- Historical data backfilling
- Rate limit aware data collection

## Installation

1. Add this repository to your Home Assistant instance:
   ```
   https://gitlab.fristerspace.de/demian/fitbit-ha-addon
   ```
2. Navigate to Settings → Add-ons → Add-on Store in Home Assistant
3. Click the menu (⋮) → Repositories
4. Install the "Fitbit Fetch Data" add-on
5. Configure the required options (see Configuration section)
6. Start the add-on

## Prerequisites

1. A Fitbit Account and Device
2. A Fitbit Application (for API access)
   - Create at [dev.fitbit.com](https://dev.fitbit.com)
   - Set OAuth 2.0 Application Type to "Personal" (required for intraday data access)
3. An InfluxDB instance accessible from your Home Assistant

## Quick Start

1. Set up your Fitbit Application at [dev.fitbit.com](https://dev.fitbit.com)
2. Note down your Client ID and Client Secret
3. Get your refresh token using the [Fitbit OAuth 2.0 Tutorial](https://dev.fitbit.com/build/reference/web-api/developer-guide/authorization/)
4. Configure the add-on with your credentials
5. Start the add-on

For detailed configuration and troubleshooting, see the [full documentation](DOCS.md).

## Support

- For bugs and feature requests, create an issue on [GitLab](https://gitlab.fristerspace.de/demian/fitbit-ha-addon/issues)
- For questions about the original Fitbit Fetch project, visit the [GitHub repository](https://github.com/arpanghosh8453/public-fitbit-projects)

## License

This project is under the BSD 4-Clause License. See the LICENSE file for details.

## Acknowledgments

This add-on is based on the [Fitbit Fetch project](https://github.com/arpanghosh8453/public-fitbit-projects) by Arpan Ghosh. Special thanks to the original author for creating the foundation for this integration.
# Fitbit Fetch Data Add-on für Home Assistant

Dieses Add-on ruft Fitbit-Daten ab und speichert sie in einer InfluxDB-Datenbank.

## Installation

1. Füge dieses Repository zu deinen Home Assistant Add-on Repositories hinzu.
2. Installiere das "Fitbit Fetch Data" Add-on.
3. Konfiguriere das Add-on über die Benutzeroberfläche.
4. Starte das Add-on.

## Konfiguration

Die folgenden Konfigurationsoptionen sind verfügbar:

* **Refresh Token:** Dein Fitbit Refresh Token.
* **InfluxDB Version:** Die Version deiner InfluxDB-Datenbank (1 oder 2).
* **InfluxDB Host:** Der Hostname oder die IP-Adresse deiner InfluxDB-Datenbank.
* **InfluxDB Port:** Der Port deiner InfluxDB-Datenbank.
* **InfluxDB Username:** Der Benutzername für deine InfluxDB-Datenbank.
* **InfluxDB Password:** Das Passwort für deine InfluxDB-Datenbank.
* **InfluxDB Database:** Der Name der Datenbank in deiner InfluxDB-Instanz.
* **InfluxDB Bucket:** Der Name des Buckets in deiner InfluxDB 2-Instanz.
* **InfluxDB Org:** Der Name der Organisation in deiner InfluxDB 2-Instanz.
* **InfluxDB Token:** Der Token für deine InfluxDB 2-Instanz.
* **InfluxDB URL:** Die URL deiner InfluxDB 2-Instanz.
* **Client ID:** Die Client ID deiner Fitbit-Anwendung.
* **Client Secret:** Der Client Secret deiner Fitbit-Anwendung.
* **Devicename:** Der Name deines Fitbit-Geräts.
* **Local Timezone:** Die lokale Zeitzone.

## Hinweise

* Stelle sicher, dass du eine InfluxDB-Datenbank eingerichtet hast.
* Du musst eine Fitbit-Anwendung erstellen und die Client ID und den Client Secret in der Add-on-Konfiguration angeben.
* Der Refresh Token kann über die Fitbit-API abgerufen werden.
* Die Ordner `logs` und `tokens` werden im Home Assistant-Dateisystem erstellt und müssen dem Benutzer mit der UID 1000 gehören.

## Unterstützung

Das Repository ist als Home Assistant Addon von https://github.com/arpanghosh8453/public-fitbit-projects gecloned worden.

Bei Problemen oder Fragen kannst du ein Issue auf GitHub erstellen.
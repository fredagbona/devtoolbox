# pgAdmin BACKUP

This Bash script automates the backup of pgAdmin database, a popular web-based administration and development platform for PostgreSQL, on a Debian or Ubuntu-based system. It sets up in the specified repository, a dump (backup) of table structure and records for choosen database in pgAdmin .

## Usage
1. Download the script or clone his repository from here.
2. Start your PostgreSQL services.
3. Complete specified information as credentials , path for restoration, db name.  in `backupPgAdminDB.sh`
4. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
5. Execute the script using the following command:

`sudo ./backupPgAdminDB.sh`



## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.


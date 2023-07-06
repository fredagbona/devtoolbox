# Download and Shutdown Script

This Bash script allows you to download a file from a specified URL as an argument and then shut down the system with an optional delay.

## Purpose

This script is useful in scenarios where you want to download a file from a given URL and then shut down the system after the download. It can be used to automate download and shutdown tasks on your machine.

## Prerequisites

- The script must be executed as a user with the necessary privileges to run the `wget` and `shutdown` commands like root.
- Ensure that the `wget` command is installed on your system.

## Usage

1. Open a terminal.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

- `URL`: The URL of the file to be downloaded.
- `delay` (optional): The delay in seconds before system shutdown (e.g., 5 for shutdown after 5 seconds). If no delay is specified, the system will not shut down and display a download completed message.

5. Follow the instructions displayed on the screen.

## Usage Examples

- Download a file and shut down the system after 10 seconds:
`sudo ./script.sh https://example.com/file.txt 10`

- Download a file without shutting down the system:
`sudo ./script.sh https://example.com/file.txt`


## Disclaimer

- Use this script with caution, taking into account execution privileges and shutdown actions. Improper use can result in data loss or other undesirable consequences.
- Please note that this script is provided as is, without any warranty. Use it at your own risk.
- Try to cat script content before execute
import sys
import os
import logging
from pathlib import Path

# Configure logging
logging.basicConfig(level=logging.INFO)

# Constants
EXCLUDED_FOLDERS = {".git"}

# List all folders in a directory and return as a list
def list_folders(directory):
    return [p for p in Path(directory).iterdir() if p.is_dir() and p.name not in EXCLUDED_FOLDERS]

# Show menu for folder selection
def show_menu(folders, level):
    for i, folder in enumerate(folders, 1):
        print(f"{i}. {folder.name}")

    if level > 0:
        print(f"{len(folders) + 1}. Return")
    print(f"{len(folders) + 2}. Exit")

# Handle user selection
def handle_selection(folders, level, current_path):
    try:
        choice = int(input("Select an option: "))
        if choice == len(folders) + 2:
            sys.exit()
        elif choice == len(folders) + 1:
            return current_path.parent, level - 1
        elif 1 <= choice <= len(folders):
            return folders[choice - 1], level + 1
        else:
            print("Invalid selection. Please try again.")
            return current_path, level
    except ValueError:
        print("Invalid input. Please enter a number.")
        return current_path, level

# Main function to navigate directories
def navigate_directories(root, level=0):
    current_path = Path(root)
    while True:
        folders = list_folders(current_path)
        show_menu(folders, level)
        current_path, level = handle_selection(folders, level, current_path)

if __name__ == "__main__":
    root_directory = input("Enter the root directory: ")
    if not os.path.isdir(root_directory):
        print(f"Error: {root_directory} is not a valid directory.")
        sys.exit(1)
    navigate_directories(root_directory)

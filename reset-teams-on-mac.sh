#!/bin/bash

display_warning() {
    echo -e "\033[31mWARNING: This will delete Microsoft Teams data.\033[0m"
    echo -e "\033[33mMake sure Microsoft Teams is not running.\033[0m"
}

display_warning

read -p "Do you want to proceed? Type 'y' and hit Enter: " user_input

if [ "$user_input" == "y" ]; then

    echo "Deleting content in Application Support folder for Microsoft Teams..."
    rm -rf ~/Library/Application\ Support/Microsoft/Teams/*

    echo "Deleting content in Caches folder for Microsoft Teams..."
    rm -rf ~/Library/Caches/com.microsoft.teams/*

    echo "Deleting Preferences for Microsoft Teams..."
    rm -f ~/Library/Preferences/com.microsoft.teams.plist

    echo "Cleanup complete."
else
    echo "Cleanup cancelled."
fi

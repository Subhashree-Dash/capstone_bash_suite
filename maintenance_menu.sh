#!/bin/bash
# maintenance_menu.sh - simple menu to run maintenance scripts
PS3="Choose an option: "
options=("Create backup" "Simulate system update" "Run log monitor" "Exit")
select opt in "${options[@]}"; do
  case $REPLY in
    1) ./backup.sh ;;
    2) ./system_update.sh ;;
    3) ./log_monitor.sh ;;
    4) echo "Exiting"; break ;;
    *) echo "Invalid option";;
  esac
done

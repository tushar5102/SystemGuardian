#!/bin/bash

# Function to check if a command is available
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Function to kill all processes that match the given name
kill_processes() {
  local process_name=$1
  echo -e "\e[1mKilling processes matching '$process_name'...\e[0m"
  pkill -f "$process_name"
}

# Array to store the executed processes
executed_processes=()

# Kill specified processes before continuing
processes_to_kill=(
  "some_process_name"
  "another_process_name"
  # Add more process names to kill if needed
)

for process_name in "${processes_to_kill[@]}"; do
  if command_exists "pkill"; then
    kill_processes "$process_name"
    executed_processes+=("\e[32mKilled processes matching '$process_name'\e[0m")
  else
    executed_processes+=("\e[31mpkill command not found. Unable to kill processes.\e[0m")
  fi
done

# Update the package lists
executed_processes+=("\e[1mRunning 'apt update'...\e[0m")
sudo apt update

# Perform a full system upgrade
executed_processes+=("\e[1mRunning 'apt full-upgrade'...\e[0m")
sudo apt full-upgrade -y

# Remove unused packages
executed_processes+=("\e[1mRunning 'apt autoremove'...\e[0m")
sudo apt autoremove -y

# Clear package cache
if command_exists "apt-get"; then
  executed_processes+=("\e[1mRunning 'apt-get clean'...\e[0m")
  sudo apt-get clean
fi

# Clear unnecessary data to free up storage space
executed_processes+=("\e[1mClearing unnecessary data...\e[0m")
# Add your code here to remove unnecessary data, such as temporary files, cache, or logs

# Check for system restart requirement
if [ -f /var/run/reboot-required ]; then
  executed_processes+=("\e[33mSystem restart required. Run 'sudo reboot' to restart.\e[0m")
fi

# Check for available updates again
executed_processes+=("\e[1mChecking for available updates...\e[0m")
available_updates=$(apt list --upgradable 2>/dev/null | grep -v Listing)
if [ -n "$available_updates" ]; then
  executed_processes+=("\e[34mThere are available updates:\n$available_updates\e[0m")
else
  executed_processes+=("\e[32mSystem is up to date. No available updates.\e[0m")
fi

# Show disk space usage
executed_processes+=("\e[1mDisk space usage:\e[0m")
executed_processes+=("$(df -h)")

echo -e "\e[1mPackage update, full-upgrade, autoremove, cleanup, unnecessary data removal, update check, and disk usage check completed.\e[0m"

# Display executed processes
echo -e "\n\e[1mExecuted Processes Summary:\e[0m"
for process in "${executed_processes[@]}"; do
  echo -e "$process"
done

#!/bin/bash
# Author - Chef
# Github - https://github.com/chefxor

# Define colors
BLUE='\e[1;34m'
CYAN='\e[1;36m'
BOLD='\e[1m'
RESET='\e[0m'

# Get system information
USER=$(whoami)
HOSTNAME=$(cat /proc/sys/kernel/hostname)
OS=$(grep "^PRETTY_NAME" /etc/os-release | cut -d '"' -f2)
KERNEL=$(uname -r)
UPTIME=$(uptime -p | sed 's/up //')
SHELL=$(basename "${SHELL}")
PACKAGES=$(pacman -Q | wc -l)
CPU=$(grep "model name" /proc/cpuinfo | head -1 | cut -d ':' -f2 | sed 's/^ *//')
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEMORY=$(free -h | awk '/^Mem:/ {print $3"/"$2}')

# Display system info
echo -e "${BOLD}${BLUE}${USER}${RESET}${BOLD}@${CYAN}${HOSTNAME}${RESET}"
echo -e "${BOLD}${CYAN}OS:${RESET} ${OS}"
echo -e "${BOLD}${CYAN}Kernel:${RESET} ${KERNEL}"
echo -e "${BOLD}${CYAN}Uptime:${RESET} ${UPTIME}"
echo -e "${BOLD}${CYAN}Shell:${RESET} $SHELL"
echo -e "${BOLD}${CYAN}Packages:${RESET} ${PACKAGES} (pacman)"
# echo -e "${BOLD}${CYAN}CPU:${RESET} ${CPU}"
echo -e "${BOLD}${CYAN}CPU Usage:${RESET} ${CPU_USAGE}%"
echo -e "${BOLD}${CYAN}Memory:${RESET} ${MEMORY}"

# Exit script
exit 0

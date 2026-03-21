#!/usr/bin/env bash
# ==========================================================
#  CODING PRIME SYSTEM | BANE-ANMESH 3S UPLINK
#  DATE: 2026-03-21 | UI-TYPE: ASC-II HYPER-VISUAL
# ==========================================================
set -euo pipefail

# --- BANE UI THEME ---
R='\033[1;31m'   # Crimson
G='\033[1;32m'   # Emerald
Y='\033[1;33m'   # Gold
C='\033[1;36m'   # Cyan
W='\033[1;37m'   # Pure White
DG='\033[1;90m'  # Steel Gray
NC='\033[0m'     # Reset

# --- REPO CONFIG ---
REPO_URL="https://raw.githubusercontent.com/DeVv-Prime/codingprime/main/ptero/main/dev.sh"

draw_banner() {
    clear
    echo -e "${G}"
    cat << "EOF"
 ██████╗ ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗     ██████╗ ██████╗ ██╗███╗   ███╗███████╗
██╔════╝██╔═══██╗██╔══██╗██║████╗  ██║██╔════╝     ██╔══██╗██╔══██╗██║████╗ ████║██╔════╝
██║     ██║   ██║██║  ██║██║██╔██╗ ██║██║  ███╗    ██████╔╝██████╔╝██║██╔████╔██║█████╗  
██║     ██║   ██║██║  ██║██║██║╚██╗██║██║   ██║    ██╔═══╝ ██╔══██╗██║██║╚██╔╝██║██╔══╝  
╚██████╗╚██████╔╝██████╔╝██║██║ ╚████║╚██████╔╝    ██║     ██║  ██║██║██║ ╚═╝ ██║███████╗
 ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝     ╚═╝  ╚═╝╚═╝╚═╝     ╚═╝╚══════╝
                                                                                             
EOF
    echo -e "${NC}"
    echo -e "   ${R}──[ ${W}CODING PRIME 3s${R} ]${NC}${DG}───────────────────────────────────────────${NC}"
    echo -e "   ${DG}STATUS:${NC} ${G}READY${NC}  ${R}│${NC}  ${DG}MODE:${NC} ${W}HYPER-VISUAL${NC}  ${R}│${NC}  ${DG}ENCRYPTION:${NC} ${G}ACTIVE${NC}"
    echo ""
}

# --- PROCESS LOGIC ---
draw_banner

# Start Uplink Connection
echo -ne "   ${R}➤${NC} ${W}Establishing CodingPrime Uplink...${NC}  "
sleep 0.5
echo -e "${G}CONNECTED${NC}"

echo -e "   ${DG}────────────────────────────────────────────────────────${NC}"
echo -e "   ${W}Starting execution in 3s...${NC}"

# Countdown
for i in {3..1}; do
    echo -ne "   ${R}${i}${NC}... "
    sleep 1
done
echo -e "${G}GO!${NC}\n"

# Run the repo code
bash -c "$(curl -fsSL ${REPO_URL})"
